List Items with non alphanumeric content
*** Parameters: ***
{}
*** Markdown input: ***
* {: #foo} A
* {: #bar } ?
* {#fubar} B
* {#fubar2 } C

*** Output of inspect ***
md_el(:document,[
  md_el(:ul,[
   md_el(:li_span,["A"],{:want_my_paragraph=>false},[[:ref, ":"], [:id, "foo"]]),
   md_el(:li_span,["?"],{:want_my_paragraph=>false},[[:ref, ":"], [:id, "bar"]]),
   md_el(:li_span,["B"],{:want_my_paragraph=>false},[[:id, "fubar"]]),
   md_el(:li_span,["C"],{:want_my_paragraph=>false},[[:id, "fubar2"]])  ],{},[])
],{},[])

*** Output of to_html ***
<ul>
<li id="foo">A</li>

<li id="bar">?</li>

<li id="fubar">B</li>

<li id="fubar2">C</li>
</ul>

*** Output of to_latex ***
\begin{itemize}%
\item A
\item ?
\item B
\item C

\end{itemize}

*** Output of to_md ***
- A
- ?
- B
- C

*** Output of to_s ***
A?BC


