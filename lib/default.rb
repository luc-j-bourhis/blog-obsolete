# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering # to allow the use of `render` in layouts

# The 2-letter code of the language the given item is written in
def language_of(item)
    c = item.identifier.to_s.match(%r{/([a-z]{2})/})
    c && c[1]
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
  attr_accessor :macro

  def initialize(arg)
    super
    @macro = {}
    if not @item.nil? and not @item[:macros].nil?
      @macro.merge!(@item[:macros])
    end
  end

  def run(content, params={})
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
    @abbreviations = []
    if not @item.nil? and not @item[:abbreviations].nil?
      @abbreviations << @item[:abbreviations]
    end
    if not @abbreviations.empty?
      @abbr_rx = /(#{@abbreviations.join("|")})/
    else
      @abbr_rx = nil
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
