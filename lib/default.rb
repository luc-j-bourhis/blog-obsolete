# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::LinkTo

def language_of(item)
    c = item.identifier.to_s.match(%r{/([a-z]{2})/})
    c && c[1]
end

class TextualMacros < Nanoc3::Filter
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

class AbbreviationMarker < Nanoc3::Filter
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
