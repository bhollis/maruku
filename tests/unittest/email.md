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
<p>This is an email address: <a href="&#x6D;a&#105;&#x6C;&#x74;&#x6F;:&#97;&#110;&#x64;&#114;&#101;a&#64;&#105;&#110;&#118;&#x61;l&#105;&#x64;.&#x69;&#x74;">&#97;&#110;&#x64;&#114;&#101;a&#64;&#105;&#110;&#118;&#x61;l&#105;&#x64;.&#x69;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;a&amp;#105;&amp;#x6C;&amp;#x74;&amp;#x6F;:&amp;#97;&amp;#110;&amp;#x64;&amp;#114;&amp;#101;a&amp;#64;&amp;#105;&amp;#110;&amp;#118;&amp;#x61;l&amp;#105;&amp;#x64;.&amp;#x69;&amp;#x74;'>&#97;&#110;&#x64;&#114;&#101;a&#64;&#105;&#110;&#118;&#x61;l&#105;&#x64;.&#x69;&#x74;</a
   ></p
 >