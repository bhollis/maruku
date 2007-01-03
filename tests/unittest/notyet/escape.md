Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
`\\`

`\`
*** Output of inspect ***
md_el(:document,[md_par([md_code("\\\\")]), md_par([md_code("\\")])] )
*** Output of to_html ***

<p><code>\\</code></p>

<p><code>\</code></p>

*** Output of to_latex ***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92\char92}

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92}


*** Output of to_s ***

*** Output of to_s ***

*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p><code>\\</code></p>

<p><code>\</code></p>

*** Output of Markdown.pl (parsed) ***
<p
     ><code>\\</code
   ></p
   ><p
     ><code>\</code
   ></p
 >