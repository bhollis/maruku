Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph

*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[	"Paragraph"])])
*** Output of to_html ***
<p>Paragraph</p
  >
*** Output of to_latex ***
Paragraph


*** Output of to_s ***
Paragraph
*** Output of to_md ***
Paragraph
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[	"Paragraph"])])
*** Output of to_html ***
<p>Paragraph</p
  >
*** Output of to_latex ***
Paragraph


*** Output of to_s ***
Paragraph
*** Output of to_md ***
Paragraph
*** Output of Markdown.pl ***
<p>Paragraph</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph</p
  >