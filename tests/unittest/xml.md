Write a comment here
*** Parameters: ***
{}
*** Markdown input: ***

<svg:svg 
width="600px" height="400px">
  <svg:g id="group">
	<svg:circle id="circ1" r="1cm" cx="3cm" cy="3cm" style="fill:red;"></svg:circle>
	<svg:circle id="circ2" r="1cm" cx="7cm" cy="3cm" style="fill:red;"/>
  </svg:g>
</svg:svg>

*** Output of inspect ***
md_el(:document,[
	md_html(""),
	md_par([
		"width=",
		md_entity("rdquo"),
		"600px",
		md_entity("rdquo"),
		" height=",
		md_entity("rdquo"),
		"400px",
		md_entity("rdquo"),
		">"
	]),
	md_html("  <svg:g id=\"group\">\n\t<svg:circle id=\"circ1\" r=\"1cm\" cx=\"3cm\" cy=\"3cm\" style=\"fill:red;\"></svg:circle>\n\t\n  </svg:g>"),
	md_html("</svg:svg>")
],{},[])
*** Output of to_html ***

<p>width=&#8221;600px&#8221; height=&#8221;400px&#8221;&gt;</p>
<svg:g id='group'>
	<svg:circle cy='3cm' id='circ1' r='1cm' cx='3cm' style='fill:red;' />
	
  </svg:g><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;/svg:svg&gt;</pre>
*** Output of to_latex ***
width=''600px'' height=''400px''{\tt \char62}


*** Output of to_md ***
width= 600px height= 400px >


*** Output of to_s ***
width=600px height=400px>
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p><svg:svg 
width="600px" height="400px">
  <svg:g id="group">
    <svg:circle id="circ1" r="1cm" cx="3cm" cy="3cm" style="fill:red;"></svg:circle>
    <svg:circle id="circ2" r="1cm" cx="7cm" cy="3cm" style="fill:red;"/>
  </svg:g>
</svg:svg></p>

*** Output of Markdown.pl (parsed) ***
<p
     ><svg:svg height='400px' width='600px'>
  <svg:g id='group'>
    <svg:circle cy='3cm' id='circ1' r='1cm' cx='3cm' style='fill:red;'/
         >
    <svg:circle cy='3cm' id='circ2' r='1cm' cx='7cm' style='fill:red;'/
         >
  </svg:g
       >
</svg:svg
   ></p
 >