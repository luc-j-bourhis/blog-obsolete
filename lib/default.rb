# All files in the 'lib' directory will be loaded
# before nanoc starts compiling. The search is recursive.
require 'pp'
require 'yaml'
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering # to allow the use of `render` in layouts


# List of all articles
def articles
  @items.select{|e| e[:kind] == :article}
end

def sorting_key_for_article(a)
  File.basename(File.dirname(a.identifier))
end

# Organise article titles in a tree for display in the side bar
def tree_of_content(lang)
  tree = {}
  articles.each do |e|
    if e[:language] == lang
      (tree[e[:category]] ||= []) << e
    end
  end
  tree.each_value do |by_cat|
    by_cat.sort_by! { |a| sorting_key_for_article(a) }
  end
  tree
end

# Articles sorted by category, and then groups if applicable
def sorted_articles
  by_lang = {}
  @items.find_all("/*/groups.*").each do |i|
    by_cat = by_lang[i[:language]] ||= {}
    i[:groups].to_h.each do |cat, groups|
      by_group = by_cat[cat] ||= {}
      groups.each do |group, abstracts|
        (by_group[group] ||= {}).update(abstracts)
      end
    end
  end
  @items.each do |i|
    if i[:kind] == :article
      by_cat = by_lang[i[:language]] ||= {}
      by_group = by_cat[i[:category]] ||= {}
      group_info = by_group[i[:group]] ||= {}
      (group_info[:articles] ||= []) << i
    end
  end
  by_lang.each_value do |by_cat|
    by_cat.each_value do |by_group|
      by_group.each_value do |group_info|
        group_info[:articles].sort_by! { |a| sorting_key_for_article(a) }
      end
    end
  end
  by_lang
end

# Group info for the current item
def current_group
  @items["/#{@item[:language]}/groups.*"][:groups]
             .to_h[@item[:category]].to_h[@item[:group]]
end

# Implementation of Theorem-like environment
def theorem_like(kind, n)
  @theorem_like_numbers ||= {}
  @theorem_like_numbers[kind] ||= []
  if @theorem_like_numbers[kind].include?(n)
    puts "Warning: Duplicate \"#{kind.capitalize} #{n}\" " +
         "in #{@item.identifier}"
  else
    @theorem_like_numbers[kind].push(n)
  end
  render "/theorem-like.*", kind: kind, number: n
end

# Cast {{XXXX ddd}} to <%=theorem_like(XXXX, ddd)%>
# so that a subsequent :erb filter can work on it
class Bacchantes < Nanoc::Filter
  identifier :bacchantes

  def run(content, params={})
    content.gsub(/\{\{ ([[:alpha:]]+) \s+ (\d+) \}\}/x) do |match|
      "<%=theorem_like('#{$1}', #{$2})%>"
    end
  end
end

# Automatic marking of abbreviations
#
# Usage
# -----
# In the header of a Markdown file, put for example
#
#    abbreviations:
#        - ATLAS
#        - BLAS
#
# Then anywhere in the same file, ATLAS and BLAS will be replaced by
# <abbr>ATLAS</abbr> and <abbr>BLAS</abbr> respectively, thus allowing
# styling with CSS for example.
class AbbreviationMarker < Nanoc::Filter
  identifier :mark_abbreviations
  attr_accessor :abbr_rx

  def initialize(arg)
    super
    abbreviations = @item && @item[:abbreviations]
    @abbr_rx = if not abbreviations.nil? and not abbreviations.empty?
                  /(#{abbreviations.join("|")})/
                else
                  nil
                end
  end

  def run(content, params={})
    if not @abbr_rx.nil?
      content.gsub(@abbr_rx, '<abbr>\1</abbr>')
    else
      content
    end
  end
end

# Translation of LaTeX macros into the format used in  Mathjax configuration
#
# Usage
# -----
# In the header of a Mardown file, put for example
#
#     tex_macros:
#         Lie: '\text{Lie}(#1)'
#         vec: '\begin{pmatrix} #1 & #2 \end{pmatrix}'
#
# and Mathjax will be configured to use those macros in the rendering of
# that page. Note the use of single quotes: the metadata uses YAML
# as a format and # is normally a special character but the single quotes
# forces the whole definition into a string.
#
# The file tex_macros.yaml in the content directory can be used to define
# macros available on any page, with the same format and syntax as above.
def macros_for_mathjax
  macros = @items['/tex_macros.*'][:tex_macros]
  if not @item.nil? and not @item[:tex_macros].nil?
    macros = macros.merge @item[:tex_macros]
  end
  macros.collect { |name, body|
    max_arg = body.scan(/#(\d+)/).flatten.map(&:to_i).max
    escaped = body.gsub('\\', '\\\\\\\\')
    specs = ["\"#{escaped}\""]
    if not max_arg.nil? then specs.push(max_arg) end
    "#{name}: [#{specs.join(', ')}]"
  }.join(",\n")
end

# References
#
# Usage
# -----
# In the header of a Markdown file, put for example
#
#     bibliography:
#         Lee:1975:
#             authors:
#                 - Lee, A. R.
#                 - Kalotas, T. M.
#             title: Lorentz transformations from the first postulate
#             journal: American Journal of Physics
#             volume: 43
#             year: 1975
#             pages: 434--437
#
# Then a Bibliography section is created by our layout whereas references
# to its items in the text shall be [[Lee:1905]] and they will be replaced
# by links to the bibliography items. The citation text is in the natbib
# style, i.e. Bob and Alice (year), Alice, Bob and Jennifer (year), or
# Alice et al (year).
#
# When there are one, two or three authors, they all appear in the citation,
# as it has just been exemplified. With four authors or more, we use
# "et al". If one wants all authors, one can add a trailing ">>":
# [[Bob:2012 >>]] instead of [[Bob:2012]].
class ReferenceFilter < Nanoc::Filter
  identifier :generate_references

  def run(content, params={})
    bibitems = @item && @item[:bibliography]
    if bibitems.nil?
      content
    else
      content.gsub(%r{\[ \[
                      ( [[:alpha:]] [^[[:space:]]]* )
                      ([ ] >>)?
                      \] \]
                    }x) do |m|
        key = $1.intern
        if bibitems.has_key?(key)
          item = bibitems[key]
          txt = format_reference(item[:authors], item[:year],
                                 @item[:language], et_al:$2.nil?)
          "[#{txt}](##{key}){: .bibliography-reference}"
        else
          m
        end
      end
    end
  end
end

# Author name
class AuthorName
  attr_reader :first, :von, :last, :jr

  # Parse name in the normalised form 'von Last, Jr, First'
  def initialize(author)
    @first = @von = @last = @jr = nil
    parts = author.split(/,[[:space:]]*/)
    case parts.length
      when 1
        vonlast = author
      when 2
        vonlast, @first = parts
      when 3
        vonlast, @jr, @first = parts
      else
        return
    end
    m = vonlast.match(/[[:space:]]*([[:alpha:]]+)$/)
    if m.nil? then return end
    @last = m[1]
    @von = m.pre_match
  end

  # Full name: First von Last, Jr
  def full_name
    [[@first, @von, @last].compact.join(' '), @jr].compact.join(', ')
  end

  # Last name: von Last, Jr
  def full_name_without_first_name
    [[@von, @last].compact.join(' '), @jr].compact.join(', ')
  end
end

# The translation of "and" in the given language
def and_(language)
  {:en => "and", :fr => "et"}[language]
end

# Format author list for bibliographie
def format_authors(authors, language, max: 4)
  names = if authors.length > max
    [authors.first.full_name, 'al.']
  else
    authors.map(&:full_name)
  end
  if names.length > 1
    (names[0..-2] + ["#{and_(language)} #{names[-1]}"]).join(', ')
  else
    names[0]
  end
end

# Format bibliographic reference: used when citing and in bibliography
def format_reference(authors, year, language, et_al:true)
  a = authors.map(&:full_name_without_first_name)
  txt = case a.length
    when 1
      a[0]
    when 2
      "#{a[0]} #{and_(language)} #{a[1]}"
    when 3
      "#{a[0]}, #{a[1]}, #{and_(language)} #{a[2]}"
    else
      if et_al
        "#{a[0]} et al"
      else
        a[0..-2].join(', ') + ", #{and_(language)} " + a[-1]
      end
  end
  "#{txt} (#{year})"
end

# Google Fonts
def google_fonts
  # With `to_a`, nil would become [] whereas an array would pass through
  @config[:google_fonts].to_a.map { |name, variants|
      name.to_s.gsub(/\s+/, '+') + ':' + variants.join(',')
  }.join('|')
end
