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
<p>This is an email address: <a href="&#109;&#97;&#105;l&#x74;&#x6F;:&#x61;&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#110;&#118;&#97;&#x6C;&#x69;&#100;&#x2E;&#x69;&#116;">&#x61;&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#110;&#118;&#97;&#x6C;&#x69;&#100;&#x2E;&#x69;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#97;&amp;#105;l&amp;#x74;&amp;#x6F;:&amp;#x61;&amp;#110;&amp;#x64;&amp;#114;&amp;#101;&amp;#x61;&amp;#64;&amp;#x69;&amp;#110;&amp;#118;&amp;#97;&amp;#x6C;&amp;#x69;&amp;#100;&amp;#x2E;&amp;#x69;&amp;#116;'>&#x61;&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#110;&#118;&#97;&#x6C;&#x69;&#100;&#x2E;&#x69;&#116;</a
   ></p
 >