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
<p>This is an email address: <a href="&#109;&#x61;&#105;&#x6C;&#116;&#x6F;:&#x61;n&#100;r&#x65;&#x61;&#64;in&#x76;&#97;&#108;&#105;&#100;&#x2E;&#x69;&#x74;">&#x61;n&#100;r&#x65;&#x61;&#64;in&#x76;&#97;&#108;&#105;&#100;&#x2E;&#x69;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#x61;&amp;#105;&amp;#x6C;&amp;#116;&amp;#x6F;:&amp;#x61;n&amp;#100;r&amp;#x65;&amp;#x61;&amp;#64;in&amp;#x76;&amp;#97;&amp;#108;&amp;#105;&amp;#100;&amp;#x2E;&amp;#x69;&amp;#x74;'>&#x61;n&#100;r&#x65;&#x61;&#64;in&#x76;&#97;&#108;&#105;&#100;&#x2E;&#x69;&#x74;</a
   ></p
 >