Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
* * *

***

*****

- - -

---------------------------------------


*** Output of inspect ***
md_el(:document,[
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[])
])
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

*** Output of to_md ***

*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[]),
	md_el(:hrule,[])
])
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

*** Output of to_md ***

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