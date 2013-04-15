IAL following list
*** Parameters: ***
{}
*** Markdown input: ***
* First item
* {#foo} Second item
* Third item
{:fubar style="color:red"}

*** Output of inspect ***
md_el(:document, [
  md_el(:ul, [
    md_li("First item", false),
    md_li("Second item", false, [[:id, "foo"]]),
    md_li("Third item", false)
  ], {}, [])
],{},[])

*** Output of to_html ***
<ul style="color:red">
<li>First item</li>
<li id="foo">Second item</li>
<li>Third item</li>
</ul>
*** Output of to_latex ***
\begin{itemize}%
\item First item
\item Second item
\item Third item

\end{itemize}
