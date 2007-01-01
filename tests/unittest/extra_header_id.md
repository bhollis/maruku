Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Header 1            {#header1}
========

Header 2            {#header2}
--------

### Header 3 ###      {#header3}

Then you can create links to different parts of the same document like this:

[Link back to header 1](#header1),
[Link back to header 2](#header2),
[Link back to header 3](#header3)

*** Output of inspect ***
#<Maruku:0x10c4e7c @refs={"dummy_0"=>{:url=>"#header1"}, "dummy_1"=>{:url=>"#header2"}, "dummy_2"=>{:url=>"#header3"}}, @node_type=:document, @toc=_(1)>	  : Header 1 (id: 'header1')
__(2)>	 1 : Header 2 (id: 'header2')
___(3)>	 1.1 : Header 3 (id: 'header3')
, @children=[#<MDElement:0x10c4b0c @node_type=:header, @doc=#<Maruku:0x10c4e7c ...>, @children=["Header 1"], @meta={:id=>"header1", :level=>1, :section=>_(1)>	  : Header 1 (id: 'header1')
__(2)>	 1 : Header 2 (id: 'header2')
___(3)>	 1.1 : Header 3 (id: 'header3')
}>, #<MDElement:0x10c3310 @node_type=:header, @doc=#<Maruku:0x10c4e7c ...>, @children=["Header 2"], @meta={:id=>"header2", :level=>2, :section=>_(2)>	 1 : Header 2 (id: 'header2')
__(3)>	 1.1 : Header 3 (id: 'header3')
}>, #<MDElement:0x10c1b8c @node_type=:header, @doc=#<Maruku:0x10c4e7c ...>, @children=["Header 3"], @meta={:id=>"header3", :level=>3, :section=>_(3)>	 1.1 : Header 3 (id: 'header3')
}>, #<MDElement:0x10be900 @node_type=:paragraph, @doc=#<Maruku:0x10c4e7c ...>, @children=["Then you can create links to different parts of the same document like this:"], @meta={}>, #<MDElement:0x10bbb38 @node_type=:paragraph, @doc=#<Maruku:0x10c4e7c ...>, @children=[#<MDElement:0x10bce34 @node_type=:link, @doc=#<Maruku:0x10c4e7c ...>, @children=["Link back to header 1"], @meta={:ref_id=>"dummy_0"}>, ", ", #<MDElement:0x10bcc18 @node_type=:link, @doc=#<Maruku:0x10c4e7c ...>, @children=["Link back to header 2"], @meta={:ref_id=>"dummy_1"}>, ", ", #<MDElement:0x10bca10 @node_type=:link, @doc=#<Maruku:0x10c4e7c ...>, @children=["Link back to header 3"], @meta={:ref_id=>"dummy_2"}>], @meta={}>], @doc=#<Maruku:0x10c4e7c ...>, @abbreviations={}, @stack=[], @meta={:title=>"Header 1"}, @footnotes={}>
*** Output of to_html ***
<h1 id='header1'>Header 1</h1
    ><h2 id='header2'>Header 2</h2
    ><h3 id='header3'>Header 3</h3
    ><p>Then you can create links to different parts of the same document like this:</p
    ><p
      ><a href='#header1'>Link back to header 1</a
      >, <a href='#header2'>Link back to header 2</a
      >, <a href='#header3'>Link back to header 3</a
    ></p
  >
*** Output of to_latex ***
\hypertarget{header1}{}\section*{{Header 1}}\label{header1}

\hypertarget{header2}{}\subsection*{{Header 2}}\label{header2}

\hypertarget{header3}{}\subsubsection*{{Header 3}}\label{header3}

Then you can create links to different parts of the same document like this:

\hyperlink{header1}{Link back to header 1}, \hyperlink{header2}{Link back to header 2}, \hyperlink{header3}{Link back to header 3}


*** Output of to_s ***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
*** Output of to_md ***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<h1>Header 1            {#header1}</h1>

<h2>Header 2            {#header2}</h2>

<h3>Header 3 ###      {#header3}</h3>

<p>Then you can create links to different parts of the same document like this:</p>

<p><a href="#header1">Link back to header 1</a>,
<a href="#header2">Link back to header 2</a>,
<a href="#header3">Link back to header 3</a></p>

*** Output of Markdown.pl (parsed) ***
<h1>Header 1 {#header1}</h1
    ><h2>Header 2 {#header2}</h2
    ><h3>Header 3 ### {#header3}</h3
    ><p>Then you can create links to different parts of the same document like this:</p
    ><p
      ><a href='#header1'>Link back to header 1</a
      >,
<a href='#header2'>Link back to header 2</a
      >,
<a href='#header3'>Link back to header 3</a
    ></p
  >