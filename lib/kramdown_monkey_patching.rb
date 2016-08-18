# We introduce two new features to the kramdown system:
#
# Superscripts and subscripts
# ---------------------------
#
# The syntax is H~2~O and E=mc^2^
#
# The idea and the code are borrowed from this pull request
#
# https://github.com/gettalong/kramdown/pull/50/commits/c3bee051cc1bd394a204db5c5cdf4a5a3f8ff71a#diff-960bf3c029137a2a77da7d11dcd93b74R286
#
# which has never been accepted. Thus thanks to [Bran](https://github.com/unibr).
#
#
# Automatic numbering of equations rendered by Mathjax
# ----------------------------------------------------
#
# First Mathjax setting should be `autoNumber: "AMS"`.
#
# Then any displayed equation such as
#
# $$
# E = mc^2
# $$
#
# will be numbered by default.
#
# Then an aligned sequence of equations
# with a single number for them all can be produced as
#
# $$
# \begin{aligned}
# \nabla . E &= \rho \\
# \nabla \times E &= -\frac{\partial B}{\partial t}
# \end{aligned}
# $$
#
# The number will be nicely centered vertically.
#
# To get a number for each aligned equation, one shall use
#
# $$
# \begin{align}
# \nabla . E &= \rho \\
# \nabla \times E &= -\frac{\partial B}{\partial t}
# \end{align}
# $$
#
# In the first two cases, one can start with `$$\notag` instead of `$$`
# to suppress numbering. In the last case, use `\notag` on each equation
# as usual in LaTeX.
require 'kramdown/parser'
require 'kramdown/converter'

# Monkey-patching
module KramdownMonkeyPatching

    # Add a span parser for superscript and subscript
    def initialize(source, options)
        super
        @span_parsers.unshift(:supersub)
    end

    # Wrap a block math inside \begin{equation} ... \end{equation}
    # unless the LaTeX starts with an align or an equation environment.
    def parse_block_math
        if super
            block = @tree.children[-1]
            if not block.value.match /^\\begin\{(?:align|equation)\*?\}/
                block.value = "\\begin{equation}\n#{block.value}\n\\end{equation}"
            end
            true
        else
            false
        end
    end
end


module Kramdown
    module Parser
        class Kramdown
            # Using "prepend" is the trick to make "super" works
            # in KramdownMonkeyPatching
            prepend KramdownMonkeyPatching

            # We may want to use ^ and ~ normally, so add them to
            # the list of characters which may be escaped
            ESCAPED_CHARS = Regexp.new(remove_const(:ESCAPED_CHARS)
                                       .to_s.sub(/\]/, "^~\\]"))

            # Regex used to detect ^ or ~
            SUPERSUB_START = /(\^|~)(?!\1)/

            # Parse ^bla bla^ and ~bla bla~
            # This results in elements of type :sup or :sub in the
            # parse tree
            def parse_supersub
                result = @src.scan(SUPERSUB_START)
                reset_pos = @src.pos
                char = @src[1]
                type = char == '^' ? :sup : :sub

                el = Element.new(type)
                stop_re = /#{Regexp.escape(char)}/
                found = parse_spans(el, stop_re)

                if found
                    @src.scan(stop_re)
                    @tree.children << el
                else
                    @src.pos = reset_pos
                    add_text(result)
                end
            end
            define_parser(:supersub, SUPERSUB_START, '\^|~')
        end
    end

    module Converter
        class Html < Base

            # Convert elements of type :sup to HTML
            def convert_sup(el, indent)
                format_as_span_html(el.type, el.attr, inner(el, indent))
            end

            # Convert elements of type :sub to HTML
            def convert_sub(el, indent)
                format_as_span_html(el.type, el.attr, inner(el, indent))
            end
        end
    end
end