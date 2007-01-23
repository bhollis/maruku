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
<p>This is an email address: <a href="&#x6D;&#x61;&#x69;&#108;t&#x6F;:&#97;&#x6E;&#100;&#114;&#x65;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;.&#x69;&#116;">&#97;&#x6E;&#100;&#114;&#x65;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;.&#x69;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#x61;&amp;#x69;&amp;#108;t&amp;#x6F;:&amp;#97;&amp;#x6E;&amp;#100;&amp;#114;&amp;#x65;&amp;#97;&amp;#64;&amp;#105;&amp;#x6E;&amp;#x76;&amp;#x61;&amp;#x6C;&amp;#x69;&amp;#x64;.&amp;#x69;&amp;#116;'>&#97;&#x6E;&#100;&#114;&#x65;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;.&#x69;&#116;</a
   ></p
 >