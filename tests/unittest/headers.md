A title with *emphasis*
=======================

A title with *emphasis*
-----------------------


#### A title with *emphasis* ####



***EOF***
<h1 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h1
    ><h2 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h2
    ><h4 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h4
  >
***EOF***
\hypertarget{a_title_with_emphasis}{}\section*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\subsection*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\paragraph*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}


***EOF***
A title with emphasisA title with emphasisA title with emphasis
***EOF***
A title with emphasisA title with emphasisA title with emphasis
***EOF***
MDElement.new(:document,[	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:section=>_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
	__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :id=>"a_title_with_emphasis", :level=>1}),
	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:section=>_(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :id=>"a_title_with_emphasis", :level=>2}),
	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:id=>"a_title_with_emphasis", :level=>4})
], {:title=>"A title with emphasis"})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<h1 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h1
    ><h2 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h2
    ><h4 id='a_title_with_emphasis'>A title with <em>emphasis</em
    ></h4
  >
***EOF***
\hypertarget{a_title_with_emphasis}{}\section*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\subsection*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}

\hypertarget{a_title_with_emphasis}{}\paragraph*{{A title with {\em emphasis}}}\label{a_title_with_emphasis}


***EOF***
A title with emphasisA title with emphasisA title with emphasis
***EOF***
A title with emphasisA title with emphasisA title with emphasis
***EOF***
MDElement.new(:document,[	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:section=>_(1)>	  : A title with emphasis (id: 'a_title_with_emphasis')
	__(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :id=>"a_title_with_emphasis", :level=>1}),
	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:section=>_(2)>	 1 : A title with emphasis (id: 'a_title_with_emphasis')
	, :id=>"a_title_with_emphasis", :level=>2}),
	
	MDElement.new(:header,[	
		"A title with ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {})
	], {:id=>"a_title_with_emphasis", :level=>4})
], {:title=>"A title with emphasis"})
***EOF***
<h1>A title with <em>emphasis</em></h1>

<h2>A title with <em>emphasis</em></h2>

<h4>A title with <em>emphasis</em></h4>

***EOF***
<h1>A title with <em>emphasis</em
    ></h1
    ><h2>A title with <em>emphasis</em
    ></h2
    ><h4>A title with <em>emphasis</em
    ></h4
  >