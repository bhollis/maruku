Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
A title with *emphasis*
=======================

A title with *emphasis*
-----------------------


#### A title with *emphasis* ####



*** Output of inspect ***
md_el(:document,[
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:section=>_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
	__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :level=>1, :id=>"a_title_with_emphasis"}),
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:section=>_(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :level=>2, :id=>"a_title_with_emphasis"}),
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:level=>4, :id=>"a_title_with_emphasis"})
], {:title=>"A title with emphasis"})
*** Output of to_html ***
<h1 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h1
    ><h2 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h2
    ><h4 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h4
  >
*** Output of to_latex ***
\hypertarget{a_title_with_emphasis}{}\section*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\subsection*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\paragraph*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}


*** Output of to_s ***
A title with emphasisA title with emphasisA title with emphasis
*** Output of to_md ***
A title with emphasisA title with emphasisA title with emphasis
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:section=>_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
	__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :level=>1, :id=>"a_title_with_emphasis"}),
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:section=>_(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :level=>2, :id=>"a_title_with_emphasis"}),
	md_el(:header,[
		"A title with ",
		md_el(:emphasis,[	"emphasis"])
	], {:level=>4, :id=>"a_title_with_emphasis"})
], {:title=>"A title with emphasis"})
*** Output of to_html ***
<h1 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h1
    ><h2 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h2
    ><h4 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h4
  >
*** Output of to_latex ***
\hypertarget{a_title_with_emphasis}{}\section*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\subsection*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\paragraph*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}


*** Output of to_s ***
A title with emphasisA title with emphasisA title with emphasis
*** Output of to_md ***
A title with emphasisA title with emphasisA title with emphasis
*** Output of Markdown.pl ***
<h1>A title with <em>emphasis</em></h1>

<h2>A title with <em>emphasis</em></h2>

<h4>A title with <em>emphasis</em></h4>

*** Output of Markdown.pl (parsed) ***
<h1>A title with <em>emphasis</em
    ></h1
    ><h2>A title with <em>emphasis</em
    ></h2
    ><h4>A title with <em>emphasis</em
    ></h4
  >