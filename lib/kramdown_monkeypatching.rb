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

module KramdownMathjaxMonkeyPatching
  # Wrap a math element inside \begin{equation} ... \end{equation}
  # unless the LaTeX starts with an align or an equation environment.
  def call(converter, el, opts)
    if not el.value.match %r{^\\begin\{
                             (?:align|equation|gather|multline)
                             \*?
                             \}
                            }x
      el.value = "\\begin{equation}\n#{el.value}\n\\end{equation}"
    end
    super(converter, el, opts)
  end
end

require 'kramdown'
require 'kramdown/converter/math_engine/mathjax'
Kramdown::Converter::MathEngine::Mathjax.singleton_class.prepend(
  KramdownMathjaxMonkeyPatching)
