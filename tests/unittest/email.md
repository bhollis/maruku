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
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116}


*** Output of to_md ***
This is an email address:


*** Output of to_s ***
This is an email address: 
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#x6D;&#97;&#x69;&#x6C;&#116;&#111;:a&#110;&#x64;&#114;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;&#x2E;&#x69;&#x74;">a&#110;&#x64;&#114;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;&#x2E;&#x69;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#97;&amp;#x69;&amp;#x6C;&amp;#116;&amp;#111;:a&amp;#110;&amp;#x64;&amp;#114;&amp;#101;&amp;#97;&amp;#64;&amp;#105;&amp;#x6E;&amp;#x76;&amp;#x61;&amp;#x6C;&amp;#x69;&amp;#x64;&amp;#x2E;&amp;#x69;&amp;#x74;'>a&#110;&#x64;&#114;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#x64;&#x2E;&#x69;&#x74;</a
   ></p
 >