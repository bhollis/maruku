
The HTML specification is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium



Operation Tigra Genesis is going well.

*[Tigra Genesis]:
***EOF***
<p>The <abbr title='Hyper Text Markup Language'>HTML</abbr
      > specification is maintained by the <abbr title='World Wide Web Consortium'>W3C</abbr
      >.</p
    ><p>Operation <abbr>Tigra Genesis</abbr
      > is going well.</p
  >
***EOF***
The HTML specification is maintained by the W3C.

Operation Tigra Genesis is going well.


***EOF***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
***EOF***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"The ",
		
		MDElement.new(:abbreviation,[	
			"HTML"
		], {:title=>"Hyper Text Markup Language"}),
		
		" specification is maintained by the ",
		
		MDElement.new(:abbreviation,[	
			"W3C"
		], {:title=>"World Wide Web Consortium"}),
		
		"."
	], {}),
	
	MDElement.new(:paragraph,[	
		"Operation ",
		
		MDElement.new(:abbreviation,[	
			"Tigra Genesis"
		], {}),
		
		" is going well."
	], {})
], {})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>The <abbr title='Hyper Text Markup Language'>HTML</abbr
      > specification is maintained by the <abbr title='World Wide Web Consortium'>W3C</abbr
      >.</p
    ><p>Operation <abbr>Tigra Genesis</abbr
      > is going well.</p
  >
***EOF***
The HTML specification is maintained by the W3C.

Operation Tigra Genesis is going well.


***EOF***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
***EOF***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"The ",
		
		MDElement.new(:abbreviation,[	
			"HTML"
		], {:title=>"Hyper Text Markup Language"}),
		
		" specification is maintained by the ",
		
		MDElement.new(:abbreviation,[	
			"W3C"
		], {:title=>"World Wide Web Consortium"}),
		
		"."
	], {}),
	
	MDElement.new(:paragraph,[	
		"Operation ",
		
		MDElement.new(:abbreviation,[	
			"Tigra Genesis"
		], {}),
		
		" is going well."
	], {})
], {})
***EOF***
<p>The HTML specification is maintained by the W3C.</p>

<p>*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium</p>

<p>Operation Tigra Genesis is going well.</p>

<p>*[Tigra Genesis]:</p>

***EOF***
<p>The HTML specification is maintained by the W3C.</p
    ><p>*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium</p
    ><p>Operation Tigra Genesis is going well.</p
    ><p>*[Tigra Genesis]:</p
  >