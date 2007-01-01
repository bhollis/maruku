Write a comment abouth the test here.
*** Markdown input: ***
Paragraph

*** Output of to_html ***
<p>Paragraph</p
  >
*** Output of to_latex ***
Paragraph


*** Output of to_s ***
Paragraph
*** Output of to_s ***
Paragraph
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph"
	], {})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<p>Paragraph</p
  >
*** Output of to_latex ***
Paragraph


*** Output of to_s ***
Paragraph
*** Output of to_s ***
Paragraph
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[	md_el(:paragraph,[	"Paragraph"])])
*** Output of Markdown.pl ***
<p>Paragraph</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph</p
  >