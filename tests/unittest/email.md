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
<p>This is an email address: <a href="&#x6D;a&#x69;&#108;&#x74;&#x6F;:&#97;&#x6E;&#x64;&#x72;e&#x61;&#64;&#x69;&#110;&#x76;&#97;l&#x69;d&#x2E;&#105;t">&#97;&#x6E;&#x64;&#x72;e&#x61;&#64;&#x69;&#110;&#x76;&#97;l&#x69;d&#x2E;&#105;t</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;a&amp;#x69;&amp;#108;&amp;#x74;&amp;#x6F;:&amp;#97;&amp;#x6E;&amp;#x64;&amp;#x72;e&amp;#x61;&amp;#64;&amp;#x69;&amp;#110;&amp;#x76;&amp;#97;l&amp;#x69;d&amp;#x2E;&amp;#105;t'>&#97;&#x6E;&#x64;&#x72;e&#x61;&#64;&#x69;&#110;&#x76;&#97;l&#x69;d&#x2E;&#105;t</a
   ></p
 >