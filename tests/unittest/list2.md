Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*** Output of inspect ***
md_el(:document,[	md_el(:ul,[	md_el(:li,[
			md_el(:paragraph,[	"This is a list item with two paragraphs."]),
			md_el(:paragraph,[	"This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"])
		], {:want_my_paragraph=>true})])])
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




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:ul,[	md_el(:li,[
			md_el(:paragraph,[	"This is a list item with two paragraphs."]),
			md_el(:paragraph,[	"This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"])
		], {:want_my_paragraph=>true})])])
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