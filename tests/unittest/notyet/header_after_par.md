Paragraph
### header ###

Paragraph
header
------

Paragraph
header
======

***EOF***
<p>Paragraph</p
    ><h3 id='header'>header</h3
    ><p>Paragraph</p
    ><h2 id='header'>header</h2
    ><p>Paragraph</p
    ><h1 id='header'>header</h1
  >
***EOF***
Paragraph

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\subsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\section*{{header}}\label{header}


***EOF***
ParagraphheaderParagraphheaderParagraphheader
***EOF***
ParagraphheaderParagraphheaderParagraphheader
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:id=>"header", :level=>3}),
	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:id=>"header", :level=>2}),
	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:section=>_(1)>	  : header (id: 'header')
	, :id=>"header", :level=>1})],
	{:title=>"header"})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>Paragraph</p
    ><h3 id='header'>header</h3
    ><p>Paragraph</p
    ><h2 id='header'>header</h2
    ><p>Paragraph</p
    ><h1 id='header'>header</h1
  >
***EOF***
Paragraph

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\subsection*{{header}}\label{header}

Paragraph

\hypertarget{header}{}\section*{{header}}\label{header}


***EOF***
ParagraphheaderParagraphheaderParagraphheader
***EOF***
ParagraphheaderParagraphheaderParagraphheader
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:id=>"header", :level=>3}),
	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:id=>"header", :level=>2}),
	
	MDElement.new(:paragraph,[	
		"Paragraph"],
		{}),
	
	MDElement.new(:header,[	
		"header"],
		{:section=>_(1)>	  : header (id: 'header')
	, :id=>"header", :level=>1})],
	{:title=>"header"})
***EOF***
<p>Paragraph</p>

<h3>header</h3>

<p>Paragraph</p>

<h2>header</h2>

<p>Paragraph</p>

<h1>header</h1>

***EOF***
<p>Paragraph</p
    ><h3>header</h3
    ><p>Paragraph</p
    ><h2>header</h2
    ><p>Paragraph</p
    ><h1>header</h1
  >