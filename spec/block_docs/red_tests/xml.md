Write a comment here
*** Parameters: ***
{:on_error=>:raise}
*** Markdown input: ***

<img/>

<svg/>

<svg:svg xmlns:svg="http://www.w3.org/2000/svg"
width="600px" height="400px">
  <svg:g id="group">
	<svg:circle id="circ1" r="1cm" cx="3cm" cy="3cm" style="fill:red;"></svg:circle>
	<svg:circle id="circ2" r="1cm" cx="7cm" cy="3cm" style="fill:red;" />
  </svg:g>
</svg:svg>

*** Output of inspect ***
md_el(:document,[
	md_html("<img />"),
	md_html("<svg/>"),
	md_html("<svg:svg xmlns:svg=\"http://www.w3.org/2000/svg\"\nwidth=\"600px\" height=\"400px\">\n  <svg:g id=\"group\">\n\t<svg:circle id=\"circ1\" r=\"1cm\" cx=\"3cm\" cy=\"3cm\" style=\"fill:red;\"></svg:circle>\n\t<svg:circle id=\"circ2\" r=\"1cm\" cx=\"7cm\" cy=\"3cm\" style=\"fill:red;\" />\n  </svg:g>\n</svg:svg>")
],{},[])
*** Output of to_html ***
<img /><svg></svg><svg:svg xmlns:svg="http://www.w3.org/2000/svg" width="600px" height="400px">
  <svg:g id="group">
	<svg:circle id="circ1" r="1cm" cx="3cm" cy="3cm" style="fill:red;"></svg:circle>
	<svg:circle id="circ2" r="1cm" cx="7cm" cy="3cm" style="fill:red;"></svg:circle>
  </svg:g>
</svg:svg>
*** Output of to_latex ***

*** Output of to_md ***

*** Output of to_s ***

