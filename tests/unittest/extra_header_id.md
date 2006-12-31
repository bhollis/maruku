Header 1            {#header1}
========

Header 2            {#header2}
--------

### Header 3 ###      {#header3}

Then you can create links to different parts of the same document like this:

[Link back to header 1](#header1),
[Link back to header 2](#header2),
[Link back to header 3](#header3)

***EOF***
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
***EOF***
\hypertarget{header1}{}\section*{{Header 1}}\label{header1}

\hypertarget{header2}{}\subsection*{{Header 2}}\label{header2}

\hypertarget{header3}{}\subsubsection*{{Header 3}}\label{header3}

Then you can create links to different parts of the same document like this:

\hyperlink{header1}{Link back to header 1}, \hyperlink{header2}{Link back to header 2}, \hyperlink{header3}{Link back to header 3}


***EOF***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
***EOF***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
***EOF***
MDElement.new(:document,[	
	MDElement.new(:header,[	
		"Header 1"
	], {:section=>_(1)>	  : Header 1 (id: 'header1')
	__(2)>	 1 : Header 2 (id: 'header2')
	___(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>1, :id=>"header1"}),
	
	MDElement.new(:header,[	
		"Header 2"
	], {:section=>_(2)>	 1 : Header 2 (id: 'header2')
	__(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>2, :id=>"header2"}),
	
	MDElement.new(:header,[	
		"Header 3"
	], {:section=>_(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>3, :id=>"header3"}),
	
	MDElement.new(:paragraph,[	
		"Then you can create links to different parts of the same document like this:"
	], {}),
	
	MDElement.new(:paragraph,[	
		MDElement.new(:link,[	
			"Link back to header 1"
		], {:ref_id=>"dummy_0"}),
		
		", ",
		
		MDElement.new(:link,[	
			"Link back to header 2"
		], {:ref_id=>"dummy_1"}),
		
		", ",
		
		MDElement.new(:link,[	
			"Link back to header 3"
		], {:ref_id=>"dummy_2"})
	], {})
], {:title=>"Header 1"})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
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
***EOF***
\hypertarget{header1}{}\section*{{Header 1}}\label{header1}

\hypertarget{header2}{}\subsection*{{Header 2}}\label{header2}

\hypertarget{header3}{}\subsubsection*{{Header 3}}\label{header3}

Then you can create links to different parts of the same document like this:

\hyperlink{header1}{Link back to header 1}, \hyperlink{header2}{Link back to header 2}, \hyperlink{header3}{Link back to header 3}


***EOF***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
***EOF***
Header 1Header 2Header 3Then you can create links to different parts of the same document like this:Link back to header 1, Link back to header 2, Link back to header 3
***EOF***
MDElement.new(:document,[	
	MDElement.new(:header,[	
		"Header 1"
	], {:section=>_(1)>	  : Header 1 (id: 'header1')
	__(2)>	 1 : Header 2 (id: 'header2')
	___(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>1, :id=>"header1"}),
	
	MDElement.new(:header,[	
		"Header 2"
	], {:section=>_(2)>	 1 : Header 2 (id: 'header2')
	__(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>2, :id=>"header2"}),
	
	MDElement.new(:header,[	
		"Header 3"
	], {:section=>_(3)>	 1.1 : Header 3 (id: 'header3')
	, :level=>3, :id=>"header3"}),
	
	MDElement.new(:paragraph,[	
		"Then you can create links to different parts of the same document like this:"
	], {}),
	
	MDElement.new(:paragraph,[	
		MDElement.new(:link,[	
			"Link back to header 1"
		], {:ref_id=>"dummy_0"}),
		
		", ",
		
		MDElement.new(:link,[	
			"Link back to header 2"
		], {:ref_id=>"dummy_1"}),
		
		", ",
		
		MDElement.new(:link,[	
			"Link back to header 3"
		], {:ref_id=>"dummy_2"})
	], {})
], {:title=>"Header 1"})
***EOF***
<h1>Header 1            {#header1}</h1>

<h2>Header 2            {#header2}</h2>

<h3>Header 3 ###      {#header3}</h3>

<p>Then you can create links to different parts of the same document like this:</p>

<p><a href="#header1">Link back to header 1</a>,
<a href="#header2">Link back to header 2</a>,
<a href="#header3">Link back to header 3</a></p>

***EOF***
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