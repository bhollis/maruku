Write a comment abouth the test here.
*** Parameters: ***
{:footnotes_used=>["^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a"]}
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
md_el(:document,[
	md_par([
		"That's some text with a footnote ",
		 md_foot_ref("^b"),
		 " and another ",
		 md_foot_ref("^c"),
		 " and another ",
		 md_foot_ref("^a"),
		 "."
	]),
	 md_par(["This is not a footnote."])
] , {:footnotes_used=>["^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a"]})
*** Output of to_html ***
<p>That&apos;s some text with a footnote <sup id='fnref:16'
        ><a href='#fn:16' rel='footnote'>16</a
      ></sup
      > and another <sup id='fnref:17'
        ><a href='#fn:17' rel='footnote'>17</a
      ></sup
      > and another <sup id='fnref:18'
        ><a href='#fn:18' rel='footnote'>18</a
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
        ><li id='fn:4'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:4' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:5'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:5' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:6'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:6' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:7'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:7' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:8'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:8' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:9'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:9' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:10'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:10' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:11'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:11' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:12'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:12' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:13'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:13' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:14'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:14' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:15'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:15' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:16'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:16' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:17'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:17' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:18'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:18' rev='footnote'>&#8617;</a
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




Failed tests:   [:inspect, :to_html] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_par([
		"That's some text with a footnote ",
		 md_foot_ref("^b"),
		 " and another ",
		 md_foot_ref("^c"),
		 " and another ",
		 md_foot_ref("^a"),
		 "."
	]),
	 md_par(["This is not a footnote."])
] , {:footnotes_used=>["^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a", "^b", "^c", "^a"]})
*** Output of to_html ***
-----| WARNING | -----
<p>That&apos;s some text with a footnote <sup id='fnref:31'
        ><a href='#fn:31' rel='footnote'>31</a
      ></sup
      > and another <sup id='fnref:32'
        ><a href='#fn:32' rel='footnote'>32</a
      ></sup
      > and another <sup id='fnref:33'
        ><a href='#fn:33' rel='footnote'>33</a
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
        ><li id='fn:4'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:4' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:5'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:5' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:6'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:6' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:7'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:7' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:8'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:8' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:9'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:9' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:10'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:10' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:11'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:11' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:12'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:12' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:13'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:13' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:14'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:14' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:15'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:15' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:16'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:16' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:17'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:17' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:18'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:18' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:19'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:19' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:20'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:20' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:21'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:21' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:22'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:22' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:23'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:23' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:24'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:24' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:25'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:25' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:26'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:26' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:27'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:27' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:28'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:28' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:29'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:29' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:30'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:30' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:31'
          ><p>And that&apos;s the footnote. This is second sentence (same paragraph)<a href='#fnref:31' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:32'
          ><p>This is the very long one.</p
          ><p>That&apos;s the second paragraph.<a href='#fnref:32' rev='footnote'>&#8617;</a
          ></p
        ></li
        ><li id='fn:33'
          ><p>And that&apos;s the footnote.</p
          ><p>That&apos;s the second paragraph of the footnote.<a href='#fnref:33' rev='footnote'>&#8617;</a
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