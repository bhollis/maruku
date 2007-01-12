
*** Parameters: ***
{}
*** Markdown input: ***
Rules: you have to have one non-space character after
the first `$` and one non-space character before the last `$`.

For example, these are not math: $20,000 and $30,000,
nor these: $20,000 $, but this *is* math: $20,000$.

Stop talking about money -- here are some formulas:

*	$\alpha$
*	$x^{n}+y^{n} \neq z^{n}$

That's it, nothing else is supported.

*** Output of inspect ***
md_el(:document,[
	md_par([
		"Rules: you have to have one non-space character after the first ",
		md_code("$"),
		" and one non-space character before the last ",
		md_code("$"),
		"."
	]),
	md_par([
		"For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this ",
		md_em(["is"]),
		" math: ",
		md_el(:inline_math,[],{:math=>"20,000"},[]),
		"."
	]),
	md_par([
		"Stop talking about money ",
		md_entity("ndash"),
		" here are some formulas:"
	]),
	md_el(:ul,[
		md_el(:li_span,[md_el(:inline_math,[],{:math=>"\\alpha"},[])],{:want_my_paragraph=>false},[]),
		md_el(:li_span,[md_el(:inline_math,[],{:math=>"x^{n}+y^{n} \\neq z^{n}"},[])],{:want_my_paragraph=>false},[])
	],{},[]),
	md_par(["That", md_entity("rsquo"), "s it, nothing else is supported."])
],{},[])
*** Output of to_html ***

<p>Rules: you have to have one non-space character after the first <code>$</code> and one non-space character before the last <code>$</code>.</p>

<p>For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this <em>is</em> math: .</p>

<p>Stop talking about money &ndash; here are some formulas:</p>

<ul>
<li />

<li />
</ul>

<p>That&rsquo;s it, nothing else is supported.</p>

*** Output of to_latex ***
Rules: you have to have one non-space character after the first \colorbox[rgb]{1.00,0.93,1.00}{\tt \char36} and one non-space character before the last \colorbox[rgb]{1.00,0.93,1.00}{\tt \char36}.

For example, these are not math: \$20,000 and \$30,000, nor these: \$20,000 \$, but this {\em is} math: .

Stop talking about money -- here are some formulas:

\begin{itemize}%
\item 
\item 

\end{itemize}
That's it, nothing else is supported.


*** Output of to_md ***
Rules: you have to have one non-space
character after the first and one
non-space character before the last .

For example, these are not math:
$20,000 and $30,000, nor these: $20,000
$, but this ismath: .

Stop talking about money here are some
formulas:

--
That s it, nothing else is supported.


*** Output of to_s ***
Rules: you have to have one non-space character after the first  and one non-space character before the last .For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this is math: .Stop talking about money  here are some formulas:Thats it, nothing else is supported.
*** EOF ***




Failed tests:   [:to_html, :to_latex] 

*** Output of inspect ***
md_el(:document,[
	md_par([
		"Rules: you have to have one non-space character after the first ",
		md_code("$"),
		" and one non-space character before the last ",
		md_code("$"),
		"."
	]),
	md_par([
		"For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this ",
		md_em(["is"]),
		" math: ",
		md_el(:inline_math,[],{:math=>"20,000"},[]),
		"."
	]),
	md_par([
		"Stop talking about money ",
		md_entity("ndash"),
		" here are some formulas:"
	]),
	md_el(:ul,[
		md_el(:li_span,[md_el(:inline_math,[],{:math=>"\\alpha"},[])],{:want_my_paragraph=>false},[]),
		md_el(:li_span,[md_el(:inline_math,[],{:math=>"x^{n}+y^{n} \\neq z^{n}"},[])],{:want_my_paragraph=>false},[])
	],{},[]),
	md_par(["That", md_entity("rsquo"), "s it, nothing else is supported."])
],{},[])
*** Output of to_html ***
-----| WARNING | -----

<p>Rules: you have to have one non-space character after the first <code>$</code> and one non-space character before the last <code>$</code>.</p>

<p>For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this <em>is</em> math: <math xmlns='http://www.w3.org/1998/Math/MathML'><mn>20</mn><mo>,</mo><mn>000</mn></math>.</p>

<p>Stop talking about money &ndash; here are some formulas:</p>

<ul>
<li><math xmlns='http://www.w3.org/1998/Math/MathML'><mi>&alpha;</mi></math></li>

<li><math xmlns='http://www.w3.org/1998/Math/MathML'><msup><mi>x</mi><mrow><mi>n</mi></mrow></msup><mo>+</mo><msup><mi>y</mi><mrow><mi>n</mi></mrow></msup><mo>&ne;</mo><msup><mi>z</mi><mrow><mi>n</mi></mrow></msup></math></li>
</ul>

<p>That&rsquo;s it, nothing else is supported.</p>

*** Output of to_latex ***
-----| WARNING | -----
Rules: you have to have one non-space character after the first \colorbox[rgb]{1.00,0.93,1.00}{\tt \char36} and one non-space character before the last \colorbox[rgb]{1.00,0.93,1.00}{\tt \char36}.

For example, these are not math: \$20,000 and \$30,000, nor these: \$20,000 \$, but this {\em is} math: \begin{math}20,000\end{math}.

Stop talking about money -- here are some formulas:

\begin{itemize}%
\item \begin{math}\alpha\end{math}
\item \begin{math}x^{n}+y^{n} \neq z^{n}\end{math}

\end{itemize}
That's it, nothing else is supported.


*** Output of to_md ***
Rules: you have to have one non-space
character after the first and one
non-space character before the last .

For example, these are not math:
$20,000 and $30,000, nor these: $20,000
$, but this ismath: .

Stop talking about money here are some
formulas:

--
That s it, nothing else is supported.


*** Output of to_s ***
Rules: you have to have one non-space character after the first  and one non-space character before the last .For example, these are not math: $20,000 and $30,000, nor these: $20,000 $, but this is math: .Stop talking about money  here are some formulas:Thats it, nothing else is supported.
*** Output of Markdown.pl ***
<p>Rules: you have to have one non-space character after
the first <code>$</code> and one non-space character before the last <code>$</code>.</p>

<p>For example, these are not math: $20,000 and $30,000,
nor these: $20,000 $, but this <em>is</em> math: $20,000$.</p>

<p>Stop talking about money -- here are some formulas:</p>

<ul>
<li>$\alpha$</li>
<li>$x^{n}+y^{n} \neq z^{n}$</li>
</ul>

<p>That's it, nothing else is supported.</p>

*** Output of Markdown.pl (parsed) ***
<p>Rules: you have to have one non-space character after
the first <code>$</code
     > and one non-space character before the last <code>$</code
     >.</p
   ><p>For example, these are not math: $20,000 and $30,000,
nor these: $20,000 $, but this <em>is</em
     > math: $20,000$.</p
   ><p>Stop talking about money -- here are some formulas:</p
   ><ul>
<li>$\alpha$</li
     >
<li>$x^{n}+y^{n} \neq z^{n}$</li
     >
</ul
   ><p>That's it, nothing else is supported.</p
 >