Write a comment abouth the test here.
*** Markdown input: ***
* * *

***

*****

- - -

---------------------------------------


*** Output of to_html ***
<hr
    /><hr
    /><hr
    /><hr
    /><hr
    />
*** Output of to_latex ***

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

*** Output of to_s ***

*** Output of to_s ***

*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:hrule,[],{})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<hr
    /><hr
    /><hr
    /><hr
    /><hr
    />
*** Output of to_latex ***

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

\vspace{.5em} \hrule \vspace{.5em}

*** Output of to_s ***

*** Output of to_s ***

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[])
])
*** Output of Markdown.pl ***
<hr />

<hr />

<hr />

<hr />

<hr />

*** Output of Markdown.pl (parsed) ***
<hr
    /><hr
    /><hr
    /><hr
    /><hr
    />