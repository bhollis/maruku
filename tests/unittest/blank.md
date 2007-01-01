Write a comment abouth the test here.
*** Markdown input: ***

Linea 1

Linea 2
*** Output of to_html ***
<p>Linea 1</p
    ><p>Linea 2</p
  >
*** Output of to_latex ***
Linea 1

Linea 2


*** Output of to_s ***
Linea 1Linea 2
*** Output of to_s ***
Linea 1Linea 2
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Linea 1"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Linea 2"
	], {})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<p>Linea 1</p
    ><p>Linea 2</p
  >
*** Output of to_latex ***
Linea 1

Linea 2


*** Output of to_s ***
Linea 1Linea 2
*** Output of to_s ***
Linea 1Linea 2
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[	"Linea 1"]),
	md_el(:paragraph,[	"Linea 2"])
])
*** Output of Markdown.pl ***
<p>Linea 1</p>

<p>Linea 2</p>

*** Output of Markdown.pl (parsed) ***
<p>Linea 1</p
    ><p>Linea 2</p
  >