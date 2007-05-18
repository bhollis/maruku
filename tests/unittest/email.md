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
<p>This is an email address: <a href="&#109;&#x61;&#105;&#108;t&#111;:&#97;&#110;&#100;&#x72;&#101;&#97;&#64;&#x69;n&#118;&#97;&#108;&#105;&#100;&#x2E;i&#116;">&#97;&#110;&#100;&#x72;&#101;&#97;&#64;&#x69;n&#118;&#97;&#108;&#105;&#100;&#x2E;i&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#x61;&amp;#105;&amp;#108;t&amp;#111;:&amp;#97;&amp;#110;&amp;#100;&amp;#x72;&amp;#101;&amp;#97;&amp;#64;&amp;#x69;n&amp;#118;&amp;#97;&amp;#108;&amp;#105;&amp;#100;&amp;#x2E;i&amp;#116;'>&#97;&#110;&#100;&#x72;&#101;&#97;&#64;&#x69;n&#118;&#97;&#108;&#105;&#100;&#x2E;i&#116;</a
   ></p
 >