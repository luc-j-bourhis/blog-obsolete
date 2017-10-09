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

    # Wrap a block math inside \begin{equation} ... \end{equation}
    # unless the LaTeX starts with an align or an equation environment.
    def parse_block_math
        if super
            block = @tree.children[-1]
            if not block.value.match \
                /^\\begin\{(?:align|equation|gather|multline)\*?\}/
                block.value = "\\begin{equation}\n#{block.value}\n\\end{equation}"
            end
            true
        else
            false
        end
    end
end


