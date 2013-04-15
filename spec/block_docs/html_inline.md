Maruku should nest inline-level HTML inside a paragraph
*** Parameters: ***
{} # params 
*** Markdown input: ***
One
<span></span>123

<span></span>123
*** Output of inspect ***
md_el(:document,[
	md_par(["One ", md_html("<span></span>"), "123"]),
	md_par([md_html("<span></span>"), "123"])
],{},[])
*** Output of to_html ***
<p>One <span></span>123</p>
<p><span></span>123</p>
