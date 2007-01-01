Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.

*** Output of inspect ***
md_el(:document,[	md_el(:ul,[	md_el(:li,[
			md_el(:paragraph,[	"A list item with a blockquote:"]),
			md_el(:quote,[	md_el(:paragraph,[	"This is a blockquote inside a list item."])])
		], {:want_my_paragraph=>true})])])
*** Output of to_html ***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}


\end{itemize}

*** Output of to_s ***
A list item with a blockquote:This is a blockquote inside a list item.
*** Output of to_md ***
A list item with a blockquote:This is a blockquote inside a list item.
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:ul,[	md_el(:li,[
			md_el(:paragraph,[	"A list item with a blockquote:"]),
			md_el(:quote,[	md_el(:paragraph,[	"This is a blockquote inside a list item."])])
		], {:want_my_paragraph=>true})])])
*** Output of to_html ***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}


\end{itemize}

*** Output of to_s ***
A list item with a blockquote:This is a blockquote inside a list item.
*** Output of to_md ***
A list item with a blockquote:This is a blockquote inside a list item.
*** Output of Markdown.pl ***
<ul>
<li><p>A list item with a blockquote:</p>

<blockquote>
  <p>This is a blockquote
  inside a list item.</p>
</blockquote></li>
</ul>

*** Output of Markdown.pl (parsed) ***
<ul>
<li
        ><p>A list item with a blockquote:</p
        >
<blockquote>
 <p>This is a blockquote
 inside a list item.</p
          >
</blockquote
      ></li
      >
</ul
  >