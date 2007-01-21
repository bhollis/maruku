Simple test for emphasis.
*** Parameters: ***
{}
*** Markdown input: ***
*Hello!* how are **you**?
*** Output of inspect ***
md_el(:document,[md_par([md_em(["Hello!"]), " how are ", md_strong(["you"]), "?"])],{},[])
*** Output of to_html ***

<p><em>Hello!</em> how are <strong>you</strong>?</p>

*** Output of to_latex ***
{\em Hello!} how are {\bf you}?


*** Output of to_md ***
Hello!how are you?


*** Output of to_s ***
Hello! how are you?
*** EOF ***




Failed tests:   [:to_latex] 

*** Output of inspect ***
md_el(:document,[md_par([md_em(["Hello!"]), " how are ", md_strong(["you"]), "?"])],{},[])
*** Output of to_html ***

<p><em>Hello!</em> how are <strong>you</strong>?</p>

*** Output of to_latex ***
-----| WARNING | -----
\emph{Hello!} how are \textbf{you}?


*** Output of to_md ***
Hello!how are you?


*** Output of to_s ***
Hello! how are you?
*** Output of Markdown.pl ***
<p><em>Hello!</em> how are <strong>you</strong>?</p>

*** Output of Markdown.pl (parsed) ***
<p
     ><em>Hello!</em
     > how are <strong>you</strong
     >?</p
 >