Write a comment abouth the test here.
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
*** Output of to_s ***
That's some text with a footnote  and another  and another .This is not a footnote.
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"That's some text with a footnote ",
		
		MDElement.new(:footnote_reference,[],{:footnote_id=>"^b"}),
		
		" and another ",
		
		MDElement.new(:footnote_reference,[],{:footnote_id=>"^c"}),
		
		" and another ",
		
		MDElement.new(:footnote_reference,[],{:footnote_id=>"^a"}),
		
		"."
	], {}),
	
	MDElement.new(:paragraph,[	
		"This is not a footnote."
	], {})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


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
*** Output of to_s ***
That's some text with a footnote  and another  and another .This is not a footnote.
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[
		"That's some text with a footnote ",
		md_el(:footnote_reference,[], {:footnote_id=>"^b"}),
		" and another ",
		md_el(:footnote_reference,[], {:footnote_id=>"^c"}),
		" and another ",
		md_el(:footnote_reference,[], {:footnote_id=>"^a"}),
		"."
	]),
	md_el(:paragraph,[	"This is not a footnote."])
])
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