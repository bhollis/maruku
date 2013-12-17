XML Comments need to be handled properly. REXML is a disaster, but Nokogiri has its bugs, too.
*** Parameters: ***
{}
*** Markdown input: ***
<!--
&rsquo;
-->

<!-- declarations for <head> & <body> -->

<!-- -- is invalid -->

<!-- -- is
invalid -->

<!-- is invalid
--->

*** Output of inspect ***
md_el(:document,[md_html("<!--\n&rsquo;\n-->"),
	md_html("<!-- declarations for <head> & <body> -->"),
	md_html("<!-- - - is invalid -->"),
	md_html("<!-- - - is\ninvalid -->"),
	md_html("<!-- is invalid\n- -->")],{},[])
*** Output of to_html ***
<!--
&rsquo;
-->

<!-- declarations for <head> & <body> -->

<!-- - - is invalid -->

<!-- - - is
invalid -->

<!-- is invalid
- -->
*** Output of to_latex ***

*** Output of to_md ***

*** Output of to_s ***

