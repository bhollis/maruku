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
#<Maruku:0x10a6968 @refs={}, @node_type=:document, @toc=_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
, @children=[#<MDElement:0x10a65a8 @node_type=:header, @doc=#<Maruku:0x10a6968 ...>, @children=["A title with ", #<MDElement:0x10a4bb8 @node_type=:emphasis, @doc=#<Maruku:0x10a6968 ...>, @children=["emphasis"], @meta={}>], @meta={:id=>"a_title_with_emphasis", :level=>1, :section=>_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
}>, #<MDElement:0x10a4690 @node_type=:header, @doc=#<Maruku:0x10a6968 ...>, @children=["A title with ", #<MDElement:0x10a2c8c @node_type=:emphasis, @doc=#<Maruku:0x10a6968 ...>, @children=["emphasis"], @meta={}>], @meta={:id=>"a_title_with_emphasis", :level=>2, :section=>_(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
}>, #<MDElement:0x10a27a0 @node_type=:header, @doc=#<Maruku:0x10a6968 ...>, @children=["A title with ", #<MDElement:0x10a0a54 @node_type=:emphasis, @doc=#<Maruku:0x10a6968 ...>, @children=["emphasis"], @meta={}>], @meta={:id=>"a_title_with_emphasis", :level=>4}>], @doc=#<Maruku:0x10a6968 ...>, @abbreviations={}, @stack=[], @meta={:title=>"A title with emphasis"}, @footnotes={}>
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



	OK!



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