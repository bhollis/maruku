Fixes Uninitialized eq2eqid hash
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
*** Markdown input: ***
Here is an equation
\[\label{xxx}
\sin(\theta)
\]
Here we refer back to it (eq:xxx). Or \eqref{xxx}.
*** Output of inspect ***
md_el(:document, [
        md_par("Here is an equation"),
        md_el(:equation, [], {:math=>"\n\\sin(\\theta)\n\n", :label=>"xxx", :num=>1}),
        md_par([
        "Here we refer back to it ",
        md_el(:eqref, [], {:eqid=>"xxx"}),
        ". Or ",
        md_el(:eqref, [], {:eqid=>"xxx"}),
        "."
        ])
])
*** Output of to_html ***
<p>Here is an equation</p>
<div class='maruku-equation' id='eq:xxx'><span class='maruku-eq-number'>(1)</span><math class='maruku-mathml' display='block' xmlns='http://www.w3.org/1998/Math/MathML'><semantics><mrow><mi>sin</mi><mo stretchy='false'>(</mo><mi>θ</mi><mo stretchy='false'>)</mo></mrow><annotation encoding='application/x-tex'>
\sin(\theta)

</annotation></semantics></math></div>
<p>Here we refer back to it <a class='maruku-eqref' href='#eq:xxx'>(1)</a>. Or <a class='maruku-eqref' href='#eq:xxx'>(1)</a>.</p>

*** Output of to_latex ***
Here is an equation

\begin{equation}
\sin(\theta)
\label{xxx}\end{equation}
Here we refer back to it \eqref{xxx}. Or \eqref{xxx}.
*** Output of to_md ***

*** Output of to_s ***

