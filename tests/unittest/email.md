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
<p>This is an email address: <a href="&#x6D;a&#105;&#x6C;&#x74;&#111;:&#97;&#x6E;&#x64;&#x72;&#x65;&#x61;&#64;&#105;&#x6E;&#118;&#x61;&#x6C;&#x69;&#100;&#x2E;&#105;&#x74;">&#97;&#x6E;&#x64;&#x72;&#x65;&#x61;&#64;&#105;&#x6E;&#118;&#x61;&#x6C;&#x69;&#100;&#x2E;&#105;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;a&amp;#105;&amp;#x6C;&amp;#x74;&amp;#111;:&amp;#97;&amp;#x6E;&amp;#x64;&amp;#x72;&amp;#x65;&amp;#x61;&amp;#64;&amp;#105;&amp;#x6E;&amp;#118;&amp;#x61;&amp;#x6C;&amp;#x69;&amp;#100;&amp;#x2E;&amp;#105;&amp;#x74;'>&#97;&#x6E;&#x64;&#x72;&#x65;&#x61;&#64;&#105;&#x6E;&#118;&#x61;&#x6C;&#x69;&#100;&#x2E;&#105;&#x74;</a
   ></p
 >