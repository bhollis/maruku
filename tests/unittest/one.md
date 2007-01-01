Write a comment abouth the test here.
*** Markdown input: ***
One line
*** Output of to_html ***
<p>One line</p
  >
*** Output of to_latex ***
One line


*** Output of to_s ***
One line
*** Output of to_s ***
One line
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"One line"
	], {})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<p>One line</p
  >
*** Output of to_latex ***
One line


*** Output of to_s ***
One line
*** Output of to_s ***
One line
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[	md_el(:paragraph,[	"One line"])])
*** Output of Markdown.pl ***
<p>One line</p>

*** Output of Markdown.pl (parsed) ***
<p>One line</p
  >