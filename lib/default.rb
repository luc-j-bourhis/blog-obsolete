# All files in the 'lib' directory will be loaded
# before nanoc starts compiling. The search is recursive.
require 'pp'
require 'yaml'
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering # to allow the use of `render` in layouts

# Are we on the main page for one of the language?
def main_page?
  not @item.nil? and %r{^/[a-z]{2}/index} =~ @item.identifier
end

# The 2-letter code of the language the given item is written in
def language_of(item)
    c = item.identifier.to_s.match(%r{/([a-z]{2})/})
    if not c.nil? then c[1].intern else :unknown end
end

# The 2-letter code of the language the current item is written in
def language
  if not @item.nil? then language_of(@item) else nil end
end

# Organise article titles in a tree for display in the side bar
def sidebar_tree(lang)
  tree = {}
  articles.each do |e|
    if language_of(e) == lang
      (tree[e[:category]] ||= []).push(e)
    end
  end
  tree
end

# Implementation of Theorem-like environment
def theorem_like(n)
  kind = __callee__.to_s.downcase
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

# Cast {{ ... }} to <%= ... %> so that a subsequent :erb filter can work on it
class Bacchantes < Nanoc::Filter
  identifier :bacchantes

  def run(content, params={})
    content.gsub(/\{\{ (?<X> (?> [^{}]+ | \{ \g<X> \} )* ) \}\}/x) do |match|
      m = Regexp.last_match[:X]
      "<%=#{m}%>"
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
  macros = YAML.load_file("content/tex_macros.yaml")
  macros.merge! @item[:tex_macros] unless @item.nil? || @item[:tex_macros].nil?
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
# to its items in the text shall be [[Lee:1905]] and they will be replaced by
# links to the bibliography items.
class ReferenceFilter < Nanoc::Filter
  identifier :generate_references

  def run(content, params={})
    bibitems = @item && @item[:bibliography]
    if bibitems.nil?
      content
    else
      content.gsub(/\[\[([[:alpha:]][^[[:space:]]]*)\]\]/) do |m|
        key = $1.intern
        if bibitems.has_key?(key)
          "[[#{key}]](##{key}){: .bibliography-reference}"
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
end

# Format author list for bibliographie
def format_authors(authors, language)
  and_ = {:en => "and", :fr => "et"}[language]
  names = authors.map{|a| AuthorName.new(a)}.map(&:full_name)
  if names.length > 1
    (names[0..-2] + ["#{and_} #{names[-1]}"]).join(', ')
  else
    names[0]
  end
end
