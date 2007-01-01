Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
    viverra nec, fringilla in, laoreet vitae, risus.
*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
    Suspendisse id sem consectetuer libero luctus adipiscing.
*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
 *  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
 *  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
 Suspendisse id sem consectetuer libero luctus adipiscing.

Ancora

*   This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

    ATTENZIONE!

*  Suspendisse id sem consectetuer libero luctus adipiscing.


Ancora

*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   Another item in the same list.
*** Output of inspect ***
#<Maruku:0x10b04cc @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10ad970 @node_type=:ul, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x10af680 @node_type=:li_span, @doc=#<Maruku:0x10b04cc ...>, @children=["Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10ad1b4 @node_type=:li_span, @doc=#<Maruku:0x10b04cc ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10aadc4 @node_type=:li_span, @doc=#<Maruku:0x10b04cc ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10a88e4 @node_type=:li_span, @doc=#<Maruku:0x10b04cc ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing"], @meta={:want_my_paragraph=>false}>, #<MDElement:0x10a6274 @node_type=:li_span, @doc=#<Maruku:0x10b04cc ...>, @children=["Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={:want_my_paragraph=>false}>], @meta={}>, #<MDElement:0x10a2354 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["Ancora"], @meta={}>, #<MDElement:0x109d584 @node_type=:ul, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x10a13f0 @node_type=:li, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x109f140 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."], @meta={}>, #<MDElement:0x109d5fc @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["ATTENZIONE!"], @meta={}>], @meta={:want_my_paragraph=>true}>, #<MDElement:0x109d174 @node_type=:li, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x109b5e0 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["Suspendisse id sem consectetuer libero luctus adipiscing."], @meta={}>], @meta={:want_my_paragraph=>false}>], @meta={}>, #<MDElement:0x10998d0 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["Ancora"], @meta={}>, #<MDElement:0x10951f4 @node_type=:ul, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x1098f98 @node_type=:li, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x10971ac @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["This is a list item with two paragraphs."], @meta={}>, #<MDElement:0x1095258 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"], @meta={}>], @meta={:want_my_paragraph=>true}>, #<MDElement:0x1094e84 @node_type=:li, @doc=#<Maruku:0x10b04cc ...>, @children=[#<MDElement:0x10935d4 @node_type=:paragraph, @doc=#<Maruku:0x10b04cc ...>, @children=["Another item in the same list."], @meta={}>], @meta={:want_my_paragraph=>false}>], @meta={}>], @doc=#<Maruku:0x10b04cc ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<ul
      ><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing</li
      ><li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.</li
    ></ul
    ><p>Ancora</p
    ><ul
      ><li
        ><p>This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.</p
        ><p>ATTENZIONE!</p
      ></li
      ><li
        ><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p
      ></li
    ></ul
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
\begin{itemize}%
\item Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing
\item Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.

\end{itemize}
Ancora

\begin{itemize}%
\item This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.

ATTENZIONE!


\item Suspendisse id sem consectetuer libero luctus adipiscing.



\end{itemize}
Ancora

\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit


\item Another item in the same list.



\end{itemize}

*** Output of to_s ***
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.ATTENZIONE!Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitAnother item in the same list.
*** Output of to_md ***
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscingDonec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.ATTENZIONE!Suspendisse id sem consectetuer libero luctus adipiscing.AncoraThis is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitAnother item in the same list.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<ul>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
viverra nec, fringilla in, laoreet vitae, risus.</li>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
<ul>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li>
</ul></li>
</ul>

<p>Ancora</p>

<ul>
<li><p>This is a list item with two paragraphs. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit. Aliquam hendrerit
mi posuere lectus.</p>

<p>ATTENZIONE!</p></li>
<li><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p></li>
</ul>

<p>Ancora</p>

<ul>
<li><p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p></li>
<li><p>Another item in the same list.</p></li>
</ul>

*** Output of Markdown.pl (parsed) ***
<ul>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
viverra nec, fringilla in, laoreet vitae, risus.</li
      >
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
      >
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
<ul>
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
          >
<li>Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.</li
          >
</ul
      ></li
      >
</ul
    ><p>Ancora</p
    ><ul>
<li
        ><p>This is a list item with two paragraphs. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit. Aliquam hendrerit
mi posuere lectus.</p
        >
<p>ATTENZIONE!</p
      ></li
      >
<li
        ><p>Suspendisse id sem consectetuer libero luctus adipiscing.</p
      ></li
      >
</ul
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