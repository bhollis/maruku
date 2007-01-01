Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.

*** Output of inspect ***
#<Maruku:0x105f720 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x105b1ac @node_type=:ul, @doc=#<Maruku:0x105f720 ...>, @children=[#<MDElement:0x105eb40 @node_type=:li, @doc=#<Maruku:0x105f720 ...>, @children=[#<MDElement:0x105d13c @node_type=:paragraph, @doc=#<Maruku:0x105f720 ...>, @children=["A list item with a blockquote:"], @meta={}>, #<MDElement:0x105cc78 @node_type=:quote, @doc=#<Maruku:0x105f720 ...>, @children=[#<MDElement:0x105b224 @node_type=:paragraph, @doc=#<Maruku:0x105f720 ...>, @children=["This is a blockquote inside a list item."], @meta={}>], @meta={}>], @meta={:want_my_paragraph=>true}>], @meta={}>], @doc=#<Maruku:0x105f720 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
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



	OK!



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