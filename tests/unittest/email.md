Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***


This is an email address: <andrea@invalid.it>
	
*** Output of inspect ***
md_el(:document,[
	md_par(["This is an email address: ", md_email("andrea@invalid.it")])
],{},[])
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a></p>
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{andrea\char64invalid\char46it}
*** Output of to_md ***
This is an email address:
*** Output of to_s ***
This is an email address:
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#109;&#97;&#x69;&#x6C;&#116;o:&#97;&#x6E;&#100;&#114;e&#97;&#64;&#105;nv&#x61;&#x6C;&#x69;&#100;&#46;&#105;&#116;">&#97;&#x6E;&#100;&#114;e&#97;&#64;&#105;nv&#x61;&#x6C;&#x69;&#100;&#46;&#105;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
Error: #<NoMethodError: undefined method `write_children' for <div> ... </>:REXML::Element>
