Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
1.   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
    viverra nec, fringilla in, laoreet vitae, risus.
 2.   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
    Suspendisse id sem consectetuer libero luctus adipiscing.
3.   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
 3.  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
 4.  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
 Suspendisse id sem consectetuer libero luctus adipiscing.

Ancora

1.  This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

    ATTENZIONE!

    - Uno
    - Due
      1. tre
      1. tre
      1. tre
    - Due

2.  Suspendisse id sem consectetuer libero luctus adipiscing.


Ancora

*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   Another item in the same list.
*** Output of inspect ***
#<Maruku:0x10b1ea8 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10af018 @node_type=:ol, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x10b0e2c @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10ae794 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10ac214 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10a9c80 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10a7638 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={:want_my_paragraph=>false}>], @meta={}>, #<MDElement:0x10a3650 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Ancora"], @meta={}>, #<MDElement:0x1095a00 @node_type=:ol, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x10a0b30 @node_type=:li, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x109e7b8 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."], @meta={}>, #<MDElement:0x109c634 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["ATTENZIONE!"], @meta={}>, #<MDElement:0x109a6b8 @node_type=:ul, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x109c2b0 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Uno"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x1099b64 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Due 1. tre 1. tre 1. tre"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10976d4 @node_type=:li_span, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Due"], @meta={:want_my_paragraph=>false}>], @meta={}>], @meta={:want_my_paragraph=>true}>, #<MDElement:0x1095578 @node_type=:li, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x1093b60 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={}>], @meta={:want_my_paragraph=>false}>], @meta={}>, #<MDElement:0x10921d4 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Ancora"], @meta={}>, #<MDElement:0x108e390 @node_type=:ul, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x10919dc @node_type=:li, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x108ff60 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["This is a list item with two paragraphs."], @meta={}>, #<MDElement:0x108e3f4 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"], @meta={}>], @meta={:want_my_paragraph=>true}>, #<MDElement:0x108e098 @node_type=:li, @doc=#<Maruku:0x10b1ea8 ...>, @children=[#<MDElement:0x108c6d0 @node_type=:paragraph, @doc=#<Maruku:0x10b1ea8 ...>, @children=["Another item in the same list."], @meta={}>], @meta={:want_my_paragraph=>false}>], @meta={}>], @doc=#<Maruku:0x10b1ea8 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<ol
      ><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.</li
    ></ol
    ><p>Ancora</p
    ><ol
      ><li
        ><p>This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.</p
        ><p>ATTENZIONE!</p
        ><ul
          ><li>Uno</li
          ><li>Due 1. tre 1. tre 1. tre</li
          ><li>Due</li
        ></ul
      ></li
      ><li
        ><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p
      ></li
    ></ol
    ><p>Ancora</p
    ><ul
      ><li
        ><p>This is a list item with two paragraphs.</p
        ><p>This is the second paragraph in the list item. You&apos;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p
      ></li
      ><li
        ><p>Another item in the same list.</p
      ></li
    ></ul
  >
*** Output of to_latex ***
\begin{enumerate}%
\item Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.

\end{enumerate}
Ancora

\begin{enumerate}%
\item This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.

ATTENZIONE!

\begin{itemize}%
\item Uno
\item Due 1. tre 1. tre 1. tre
\item Due

\end{itemize}

\item Suspendisse id sem consectetuer libero luctus adipiscing.



\end{enumerate}
Ancora

\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit


\item Another item in the same list.



\end{itemize}

*** Output of to_s ***
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.ATTENZIONE!UnoDue 1. tre 1. tre 1. treDueSuspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitAnother item in the same list.
*** Output of to_md ***
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.ATTENZIONE!UnoDue 1. tre 1. tre 1. treDueSuspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitAnother item in the same list.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<ol>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
viverra nec, fringilla in, laoreet vitae, risus.
<ol>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
</ol></li>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
<ol>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
</ol></li>
</ol>

<p>Ancora</p>

<ol>
<li><p>This is a list item with two paragraphs. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit. Aliquam hendrerit
mi posuere lectus.</p>

<p>ATTENZIONE!</p>

<ul>
<li>Uno</li>
<li>Due
<ol>
<li>tre</li>
<li>tre</li>
<li>tre</li>
</ol></li>
<li>Due</li>
</ul></li>
<li><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p></li>
</ol>

<p>Ancora</p>

<ul>
<li><p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p></li>
<li><p>Another item in the same list.</p></li>
</ul>

*** Output of Markdown.pl (parsed) ***
<ol>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
viverra nec, fringilla in, laoreet vitae, risus.
<ol>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
          >
</ol
      ></li
      >
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
<ol>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
          >
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
          >
</ol
      ></li
      >
</ol
    ><p>Ancora</p
    ><ol>
<li
        ><p>This is a list item with two paragraphs. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit. Aliquam hendrerit
mi posuere lectus.</p
        >
<p>ATTENZIONE!</p
        >
<ul>
<li>Uno</li
          >
<li>Due
<ol>
<li>tre</li
              >
<li>tre</li
              >
<li>tre</li
              >
</ol
          ></li
          >
<li>Due</li
          >
</ul
      ></li
      >
<li
        ><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p
      ></li
      >
</ol
    ><p>Ancora</p
    ><ul>
<li
        ><p>This is a list item with two paragraphs.</p
        >
<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p
      ></li
      >
<li
        ><p>Another item in the same list.</p
      ></li
      >
</ul
  >