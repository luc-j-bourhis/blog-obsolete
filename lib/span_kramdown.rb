require 'kramdown'

# Formatting of <span></span> with Kramdown
class Kramdown::Parser::SpanKramdown < Kramdown::Parser::Kramdown
  def initialize(source, options)
    super
    @block_parsers = []
  end
end
