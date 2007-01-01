Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*** Output of inspect ***
#<Maruku:0x1043ed0 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x1123724 @node_type=:ul, @doc=#<Maruku:0x1043ed0 ...>, @children=[#<MDElement:0x10435fc @node_type=:li, @doc=#<Maruku:0x1043ed0 ...>, @children=[#<MDElement:0x1041bf8 @node_type=:paragraph, @doc=#<Maruku:0x1043ed0 ...>, @children=["This is a list item with two paragraphs."], @meta={}>, #<MDElement:0x1123788 @node_type=:paragraph, @doc=#<Maruku:0x1043ed0 ...>, @children=["This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"], @meta={}>], @meta={:want_my_paragraph=>true}>], @meta={}>], @doc=#<Maruku:0x1043ed0 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<ul
      ><li
        ><p>This is a list item with two paragraphs.</p
        ><p>This is the second paragraph in the list item. You&apos;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit



\end{itemize}

*** Output of to_s ***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
*** Output of to_md ***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<ul>
<li><p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p></li>
</ul>

*** Output of Markdown.pl (parsed) ***
<ul>
<li
        ><p>This is a list item with two paragraphs.</p
        >
<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p
      ></li
      >
</ul
  >