Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
This is a list:
* one
* two
* three

*** Output of inspect ***
md_el(:document,[md_par(["This is a list: * one * two * three"])] )
*** Output of to_html ***

<p>This is a list: * one * two * three</p>

*** Output of to_latex ***
This is a list: * one * two * three


*** Output of to_s ***
This is a list: * one * two * three
*** Output of to_s ***
This is a list: * one * two * three
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is a list:
* one
* two
* three</p>

*** Output of Markdown.pl (parsed) ***
<p>This is a list:
* one
* two
* three</p
 >