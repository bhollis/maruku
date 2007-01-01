Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
That's some text with a footnote [^b] and another [^c] and another [^a].

[^a]: And that's the footnote.

    That's the second paragraph of the footnote.


[^b]: And that's the footnote.
This is second sentence (same paragraph).

[^c]:
    This is the very long one.

    That's the second paragraph.


This is not a footnote.
*** Output of inspect ***
#<Maruku:0x111fe1c @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x111938c @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["That's some text with a footnote ", #<MDElement:0x111c794 @node_type=:footnote_reference, @doc=#<Maruku:0x111fe1c ...>, @children=[], @meta={:footnote_id=>"^b"}>, " and another ", #<MDElement:0x111c67c @node_type=:footnote_reference, @doc=#<Maruku:0x111fe1c ...>, @children=[], @meta={:footnote_id=>"^c"}>, " and another ", #<MDElement:0x111c2bc @node_type=:footnote_reference, @doc=#<Maruku:0x111fe1c ...>, @children=[], @meta={:footnote_id=>"^a"}>, "."], @meta={}>, #<MDElement:0x1105c10 @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["This is not a footnote."], @meta={}>], @doc=#<Maruku:0x111fe1c ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={"^a"=>#<MDElement:0x11103cc @node_type=:footnote, @doc=#<Maruku:0x111fe1c ...>, @children=[#<MDElement:0x1113c20 @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["And that's the footnote."], @meta={}>, #<MDElement:0x1110638 @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["That's the second paragraph of the footnote."], @meta={}>], @meta={}>, "^b"=>#<MDElement:0x110c510 @node_type=:footnote, @doc=#<Maruku:0x111fe1c ...>, @children=[#<MDElement:0x110c54c @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["And that's the footnote. This is second sentence (same paragraph)"], @meta={}>], @meta={}>, "^c"=>#<MDElement:0x1107b28 @node_type=:footnote, @doc=#<Maruku:0x111fe1c ...>, @children=[#<MDElement:0x1109b1c @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["This is the very long one."], @meta={}>, #<MDElement:0x1107b78 @node_type=:paragraph, @doc=#<Maruku:0x111fe1c ...>, @children=["That's the second paragraph."], @meta={}>], @meta={}>}>
*** Output of to_html ***
<p>That&apos;s some text with a footnote <sup id='fnref:1'
        ><a href='#fn:1' rel='footnote'>1</a
      ></sup
      > and another <sup id='fnref:2'
        ><a href='#fn:2' rel='footnote'>2</a
      ></sup
      > and another <sup id='fnref:3'
        ><a href='#fn:3' rel='footnote'>3</a
      ></sup
      >.</p
    ><p>This is not a footnote.</p
    ><div class='footnotes'
      ><hr
      /><ol
        ><li id='fn:1'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:1' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:2'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:2' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:3'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:3' rev='footnote'>&#8617;</a
          ></p
        ></li
      ></ol
    ></div
  >
*** Output of to_latex ***
That's some text with a footnote \footnote{And that's the footnote. This is second sentence (same paragraph)}  and another \footnote{This is the very long one.

That's the second paragraph.}  and another \footnote{And that's the footnote.

That's the second paragraph of the footnote.} .

This is not a footnote.


*** Output of to_s ***
That's some text with a footnote  and another  and another .This is not a footnote.
*** Output of to_md ***
That's some text with a footnote  and another  and another .This is not a footnote.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>That's some text with a footnote [^b] and another [^c] and another [^a].</p>

<p>[^a]: And that's the footnote.</p>

<pre><code>That's the second paragraph of the footnote.
</code></pre>

<p>[^b]: And that's the footnote.
This is second sentence (same paragraph).</p>

<p>[^c]:
    This is the very long one.</p>

<pre><code>That's the second paragraph.
</code></pre>

<p>This is not a footnote.</p>

*** Output of Markdown.pl (parsed) ***
<p>That's some text with a footnote [^b] and another [^c] and another [^a].</p
    ><p>[^a]: And that's the footnote.</p
    ><pre
      ><code>That's the second paragraph of the footnote.
</code
    ></pre
    ><p>[^b]: And that's the footnote.
This is second sentence (same paragraph).</p
    ><p>[^c]:
 This is the very long one.</p
    ><pre
      ><code>That's the second paragraph.
</code
    ></pre
    ><p>This is not a footnote.</p
  >