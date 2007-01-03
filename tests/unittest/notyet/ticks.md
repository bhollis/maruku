Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
`There is a literal backtick (\`) here.`

`There is a literal backtick (\\`) here.`

``There is a literal backtick (`) here.``


*** Output of inspect ***
md_el(:document,[
	md_par([md_code("There is a literal backtick (\\"), ") here.", md_code("")]),
	 md_par([
		md_code("There is a literal backtick (\\\\"),
		 ") here.",
		 md_code("")
	]),
	 md_par([md_code("There is a literal backtick (`) here.")])
] )
*** Output of to_html ***

<p><code>There is a literal backtick (\</code>) here.<code></code></p>

<p><code>There is a literal backtick (\\</code>) here.<code></code></p>

<p><code>There is a literal backtick (`) here.</code></p>

*** Output of to_latex ***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char84\char104\char101\char114\char101\char32\char105\char115\char32\char97\char32\char108\char105\char116\char101\char114\char97\char108\char32\char98\char97\char99\char107\char116\char105\char99\char107\char32\char40\char92}) here.\colorbox[rgb]{0.94,0.94,0.88}{\tt }

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char84\char104\char101\char114\char101\char32\char105\char115\char32\char97\char32\char108\char105\char116\char101\char114\char97\char108\char32\char98\char97\char99\char107\char116\char105\char99\char107\char32\char40\char92\char92}) here.\colorbox[rgb]{0.94,0.94,0.88}{\tt }

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char84\char104\char101\char114\char101\char32\char105\char115\char32\char97\char32\char108\char105\char116\char101\char114\char97\char108\char32\char98\char97\char99\char107\char116\char105\char99\char107\char32\char40\char96\char41\char32\char104\char101\char114\char101\char46}


*** Output of to_s ***
) here.) here.
*** Output of to_s ***
) here.) here.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p><code>There is a literal backtick (\</code>) here.`</p>

<p><code>There is a literal backtick (\\</code>) here.`</p>

<p><code>There is a literal backtick (`) here.</code></p>

*** Output of Markdown.pl (parsed) ***
<p
     ><code>There is a literal backtick (\</code
     >) here.`</p
   ><p
     ><code>There is a literal backtick (\\</code
     >) here.`</p
   ><p
     ><code>There is a literal backtick (`) here.</code
   ></p
 >