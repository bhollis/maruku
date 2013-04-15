Maruku should not nest block-level HTML inside a paragraph
*** Parameters: ***
{} # params 
*** Markdown input: ***
One
<div></div>123

<div></div>123
*** Output of inspect ***
md_el(:document,[
	md_par("One"),
  md_html("<div></div>"), 
  md_par("123"),
	md_html("<div></div>"),
  md_par("123")
],{},[])
*** Output of to_html ***
<p>One</p>
<div></div>
<p>123</p>
<div></div>
<p>123</p>
