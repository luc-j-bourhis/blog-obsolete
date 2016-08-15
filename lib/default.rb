# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering # to allow the use of `render` in layouts

# The 2-letter code of the language the given item is written in
def language_of(item)
    c = item.identifier.to_s.match(%r{/([a-z]{2})/})
    if not c.nil? then c[1].intern else :unknown end
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

# Macro system
#
# Usage
# -----
# In the header of a Markdown file, put for example
#
#    macros:
#        irf: Inertial Reference Frame
#
# Then anywhere in the same file, write `%irf` and this filter will replace
# the macro with "Inertial Reference Frame".
class TextualMacros < Nanoc::Filter
  identifier :textual_macros

  def run(content, params={})
    macro = @item && @item[:macros]
    if macro.nil?
      content
    else
      content.gsub(/%(\w+)/) do |m|
        key = $1.intern
        if not @macro[key].nil?
          @macro[key]
        else
          m
        end
      end
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
def macros_for_mathjax
  macros = {}
  macros_in_metadata = @item && @item[:tex_macros]
  if not macros_in_metadata.nil?
    macros.merge! macros_in_metadata
  end
  split = File.open("content/macros.sty")
    .select { |line| not /^%/ =~ line }
    .join
    .split(/\\newcommand\{\\([[:alpha:]]+)\}(?:\[[0-9]+\])?/)
    .slice(1..-1)
  macros.merge! Hash[*split]
    .each_value { |body|
      body.sub!(/^ *\{/, "")
      body.sub!(/\}[[:space:]]*$/, "")
    }
  macros.collect { |name, body|
    max_arg = body.scan(/#(\d+)/).flatten.map(&:to_i).max
    escaped = body.gsub('\\', '\\\\\\\\')
    specs = ["\"#{escaped}\""]
    if not max_arg.nil? then specs.push(max_arg) end
    "#{name}: [#{specs.join(', ')}]"
  }.join(",\n")
end

