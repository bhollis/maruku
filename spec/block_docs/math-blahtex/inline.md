
*** Parameters: ***
require 'maruku/ext/math'; {:html_math_engine => 'blahtex'}
*** Markdown input: ***
Here are some formulas:

*	$\alpha$
*	$x^{n}+y^{n} \neq z^{n}$

That's it, nothing else is supported.

*** Output of inspect ***
md_el(:document,[
	md_par(["Here are some formulas:"]),
	md_el(:ul,[
		md_el(:li,[md_el(:inline_math,[],{:math=>"\\alpha"},[])],{:want_my_paragraph=>false},[]),
		md_el(:li,[md_el(:inline_math,[],{:math=>"x^{n}+y^{n} \\neq z^{n}"},[])],{:want_my_paragraph=>false},[])
	],{},[]),
	md_par(["That", md_entity("rsquo"), "s it, nothing else is supported."])
],{},[])
*** Output of to_html ***
<p>Here are some formulas:</p>

<ul>
<li><math xmlns="http://www.w3.org/1998/Math/MathML" display="inline" class="maruku-mathml"><mi>α</mi></math></li>

<li><math xmlns="http://www.w3.org/1998/Math/MathML" display="inline" class="maruku-mathml">
<mrow><msup><mi>x</mi><mi>n</mi></msup><mo lspace="0.222em" rspace="0.222em">+</mo><msup><mi>y</mi><mi>n</mi></msup><mo lspace="0.278em" rspace="0.278em">&#x2260;</mo><msup><mi>z</mi><mi>n</mi></msup></mrow>
</math></li>
</ul>

<p>That’s it, nothing else is supported.</p>
*** Output of to_latex ***
Here are some formulas:

\begin{itemize}%
\item $\alpha$
\item $x^{n}+y^{n} \neq z^{n}$

\end{itemize}
That's it, nothing else is supported.
*** Output of to_md ***
Here are some formulas:

--
That s it, nothing else is supported.
*** Output of to_s ***
Here are some formulas:Thats it, nothing else is supported.
