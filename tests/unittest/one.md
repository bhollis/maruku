Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
One line
*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[	"One line"])])
*** Output of to_html ***
<p>One line</p
  >
*** Output of to_latex ***
One line


*** Output of to_s ***
One line
*** Output of to_md ***
One line
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[	"One line"])])
*** Output of to_html ***
<p>One line</p
  >
*** Output of to_latex ***
One line


*** Output of to_s ***
One line
*** Output of to_md ***
One line
*** Output of Markdown.pl ***
<p>One line</p>

*** Output of Markdown.pl (parsed) ***
<p>One line</p
  >