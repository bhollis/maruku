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
#<Maruku:0x10fb6d4 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10f4a14 @node_type=:ul, @doc=#<Maruku:0x10fb6d4 ...>, @children=[#<MDElement:0x10f9898 @node_type=:li, @doc=#<Maruku:0x10fb6d4 ...>, @children=[#<MDElement:0x10f7660 @node_type=:paragraph, @doc=#<Maruku:0x10fb6d4 ...>, @children=["A list item with a blockquote:"], @meta={}>, #<MDElement:0x10f7368 @node_type=:quote, @doc=#<Maruku:0x10fb6d4 ...>, @children=[#<MDElement:0x10f4ca8 @node_type=:paragraph, @doc=#<Maruku:0x10fb6d4 ...>, @children=["This is a blockquote inside a list item."], @meta={}>], @meta={}>], @meta={:want_my_paragraph=>true}>, #<MDElement:0x10f412c @node_type=:li, @doc=#<Maruku:0x10fb6d4 ...>, @children=[#<MDElement:0x10f2160 @node_type=:paragraph, @doc=#<Maruku:0x10fb6d4 ...>, @children=["A list item with a code block:"], @meta={}>, #<MDElement:0x10f1fd0 @node_type=:code, @doc=#<Maruku:0x10fb6d4 ...>, @children=[], @meta={:raw_code=>"<code goes here>"}>], @meta={:want_my_paragraph=>true}>], @meta={}>], @doc=#<Maruku:0x10fb6d4 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
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



	OK!



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