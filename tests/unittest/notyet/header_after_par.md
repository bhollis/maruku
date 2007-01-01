Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph
### header ###

Paragraph
header
------

Paragraph
header
======

*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:level=>3, :id=>"header"}),
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:level=>2, :id=>"header"}),
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:section=>_(1)>	  : header (id: 'header')
	, :level=>1, :id=>"header"})
], {:title=>"header"})
*** Output of to_html ***
<p>Paragraph</p
    ><h3 id='header'>header</h3
    ><p>Paragraph</p
    ><h2 id='header'>header</h2
    ><p>Paragraph</p
    ><h1 id='header'>header</h1
  >
*** Output of to_latex ***
Paragraph

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\subsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\section*{{header}}\label{header}


*** Output of to_s ***
ParagraphheaderParagraphheaderParagraphheader
*** Output of to_md ***
ParagraphheaderParagraphheaderParagraphheader
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:level=>3, :id=>"header"}),
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:level=>2, :id=>"header"}),
	md_el(:paragraph,[	"Paragraph"]),
	md_el(:header,[	"header"], {:section=>_(1)>	  : header (id: 'header')
	, :level=>1, :id=>"header"})
], {:title=>"header"})
*** Output of to_html ***
<p>Paragraph</p
    ><h3 id='header'>header</h3
    ><p>Paragraph</p
    ><h2 id='header'>header</h2
    ><p>Paragraph</p
    ><h1 id='header'>header</h1
  >
*** Output of to_latex ***
Paragraph

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\subsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\section*{{header}}\label{header}


*** Output of to_s ***
ParagraphheaderParagraphheaderParagraphheader
*** Output of to_md ***
ParagraphheaderParagraphheaderParagraphheader
*** Output of Markdown.pl ***
<p>Paragraph</p>

<h3>header</h3>

<p>Paragraph</p>

<h2>header</h2>

<p>Paragraph</p>

<h1>header</h1>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph</p
    ><h3>header</h3
    ><p>Paragraph</p
    ><h2>header</h2
    ><p>Paragraph</p
    ><h1>header</h1
  >