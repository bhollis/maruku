Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   other

*** Output of inspect ***
md_el(:document,[
	md_el(:ul,[
		md_el(:li,[
			md_par(["This is a list item with two paragraphs."]),
			md_par([
				"This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"
			])
		],{:want_my_paragraph=>true},[]),
		md_el(:li,[md_par(["other"])],{:want_my_paragraph=>false},[])
	],{},[])
],{},[])
*** Output of to_html ***

<ul>
<li>
<p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You&apos;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p>
</li>

<li>
<p>other</p>
</li>
</ul>

*** Output of to_latex ***
\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit


\item other



\end{itemize}

*** Output of to_md ***
-This is a list item with two paragraphs.
This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
-ther


*** Output of to_s ***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitother
*** EOF ***




Failed tests:   [:inspect, :to_html, :to_md, :to_s] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:ul,[
		md_el(:li,[
			md_par(["This is a list item with two paragraphs."]),
			md_par([
				"This is the second paragraph in the list item. Yo",
				"u",
				md_entity("rsquo"),
				"re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"
			])
		],{:want_my_paragraph=>true},[]),
		md_el(:li,[md_par(["other"])],{:want_my_paragraph=>false},[])
	],{},[])
],{},[])
*** Output of to_html ***
-----| WARNING | -----

<ul>
<li>
<p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You&rsquo;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p>
</li>

<li>
<p>other</p>
</li>
</ul>

*** Output of to_latex ***
\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit


\item other



\end{itemize}

*** Output of to_md ***
-----| WARNING | -----
-This is a list item with two paragraphs.
This is the second paragraph in the list item. Youre only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
-ther


*** Output of to_s ***
-----| WARNING | -----
This is a list item with two paragraphs.This is the second paragraph in the list item. Youre only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elitother
*** Output of Markdown.pl ***
<ul>
<li><p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p></li>
<li><p>other</p></li>
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
<li
       ><p>other</p
     ></li
     >
</ul
 >