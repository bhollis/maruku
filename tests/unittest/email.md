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
<p>This is an email address: <a href="&#x6D;&#x61;&#105;&#108;&#116;&#111;:&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;i&#x6E;v&#97;&#108;&#105;&#100;&#x2E;&#105;&#116;">&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;i&#x6E;v&#97;&#108;&#105;&#100;&#x2E;&#105;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#x61;&amp;#105;&amp;#108;&amp;#116;&amp;#111;:&amp;#x61;&amp;#x6E;&amp;#100;&amp;#x72;&amp;#x65;&amp;#97;&amp;#64;i&amp;#x6E;v&amp;#97;&amp;#108;&amp;#105;&amp;#100;&amp;#x2E;&amp;#105;&amp;#116;'>&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;i&#x6E;v&#97;&#108;&#105;&#100;&#x2E;&#105;&#116;</a
   ></p
 >