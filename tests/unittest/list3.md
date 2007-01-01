Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.

*   A list item with a code block:

        <code goes here>
*** Output of inspect ***
md_el(:document,[	md_el(:ul,[
		md_el(:li,[
			md_el(:paragraph,[	"A list item with a blockquote:"]),
			md_el(:quote,[	md_el(:paragraph,[	"This is a blockquote inside a list item."])])
		], {:want_my_paragraph=>true}),
		md_el(:li,[
			md_el(:paragraph,[	"A list item with a code block:"]),
			md_el(:code,[], {:raw_code=>"<code goes here>"})
		], {:want_my_paragraph=>true})
	])])
*** Output of to_html ***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
      ><li
        ><p>A list item with a code block:</p
        ><pre
          ><code>&lt;code goes here&gt;</code
        ></pre
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}

\item A list item with a code block:

\begin{verbatim}<code goes here>\end{verbatim}


\end{itemize}

*** Output of to_s ***
A list item with a blockquote:This is a blockquote inside a list item.A list item with a code block:
*** Output of to_md ***
A list item with a blockquote:This is a blockquote inside a list item.A list item with a code block:
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:ul,[
		md_el(:li,[
			md_el(:paragraph,[	"A list item with a blockquote:"]),
			md_el(:quote,[	md_el(:paragraph,[	"This is a blockquote inside a list item."])])
		], {:want_my_paragraph=>true}),
		md_el(:li,[
			md_el(:paragraph,[	"A list item with a code block:"]),
			md_el(:code,[], {:raw_code=>"<code goes here>"})
		], {:want_my_paragraph=>true})
	])])
*** Output of to_html ***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
      ><li
        ><p>A list item with a code block:</p
        ><pre
          ><code>&lt;code goes here&gt;</code
        ></pre
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}

\item A list item with a code block:

\begin{verbatim}<code goes here>\end{verbatim}


\end{itemize}

*** Output of to_s ***
A list item with a blockquote:This is a blockquote inside a list item.A list item with a code block:
*** Output of to_md ***
A list item with a blockquote:This is a blockquote inside a list item.A list item with a code block:
*** Output of Markdown.pl ***
<ul>
<li><p>A list item with a blockquote:</p>

<blockquote>
  <p>This is a blockquote
  inside a list item.</p>
</blockquote></li>
<li><p>A list item with a code block:</p>

<pre><code>&lt;code goes here&gt;
</code></pre></li>
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
<li
        ><p>A list item with a code block:</p
        >
<pre
          ><code>&lt;code goes here&gt;
</code
        ></pre
      ></li
      >
</ul
  >