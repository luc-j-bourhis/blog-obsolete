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

module KramdownMathjaxEquationNumberMonkeyPatching
  # Wrap a math element inside \begin{equation} ... \end{equation}
  # unless the LaTeX starts with an align or an equation environment.
  def call(converter, el, opts)
    if not el.value.match %r{^\\begin\{
                             (?:align|alignat|equation|gather|multline)
                             \*?
                             \}
                            }x
      el.value = "\\begin{equation}\n#{el.value}\n\\end{equation}"
    end
    super(converter, el, opts)
  end
end

# Tensors a la \usepackage{tensor} from CTAN
# ------------------------------------------
#
# We support the \indices macro as in
#
# M\indices{^a_{\mathbf{u}}^d_{bc}}
#
# This is translated to something of the form M^{…}_{…} which Mathjax
# or KaTeX can handle. Braces are necessary around macros taking arguments.
# They can be omitted around macro-like construct without arguments, e.g.
#
# T\indices{^\mu_\nu}
#
# is fine but
#
# T\indices{^\myindex{i}_\nu}
#
# is not: it won't trigger any error but the rendering will be garbled.
# Note that the LaTeX package `tensor` has the same caveat.
#
# The current implementation just insert \phantom{…}
# at the right places among superscript and indices to create spaces of
# the right length.
module KramdownMathjaxTensorMonkeyPatching
  def call(converter, el, opts)
    bracepat = %r{
      (?<re>
        (?:
          (?> [^{}]+)
          |
          \{ \g<re> \}
        )*
      )
    }x
    el.value.gsub! /\\indices \{ (#{bracepat}) \}/x do
      indices = Regexp.last_match.captures[0]
      # All capturing groups must be named even if we don't use those names
      # as otherwise `scan` will not iterate over the right triplet of matching
      # text
      up, down = indices.scan(%r{ (?<s>[\^_])
                                | (?<i>\\?[[:alnum:]]+)
                                | \{ #{bracepat} \}}x)
                 .map{|x| x.compact.uniq}.flatten
                 .each_slice(2)
                 .map{|s,v|  s == '^' ? [v, "\\phantom{#{v}}"]
                                      : ["\\phantom{#{v}}", v]}
                 .transpose
                 .map{|x| "{#{x.join}}"}
      "^#{up}_#{down}"
    end
    super(converter, el, opts)
  end
end

require 'kramdown'
require 'kramdown/converter/math_engine/mathjax'
Kramdown::Converter::MathEngine::Mathjax.singleton_class.prepend(
  KramdownMathjaxEquationNumberMonkeyPatching,
  KramdownMathjaxTensorMonkeyPatching)
