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
<p>This is an email address: <a href="&#109;ai&#x6C;&#x74;&#x6F;:&#97;&#110;&#100;&#x72;&#x65;&#97;&#64;&#x69;&#x6E;&#118;&#97;&#108;&#x69;&#x64;&#46;&#105;&#116;">&#97;&#110;&#100;&#x72;&#x65;&#97;&#64;&#x69;&#x6E;&#118;&#97;&#108;&#x69;&#x64;&#46;&#105;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;ai&amp;#x6C;&amp;#x74;&amp;#x6F;:&amp;#97;&amp;#110;&amp;#100;&amp;#x72;&amp;#x65;&amp;#97;&amp;#64;&amp;#x69;&amp;#x6E;&amp;#118;&amp;#97;&amp;#108;&amp;#x69;&amp;#x64;&amp;#46;&amp;#105;&amp;#116;'>&#97;&#110;&#100;&#x72;&#x65;&#97;&#64;&#x69;&#x6E;&#118;&#97;&#108;&#x69;&#x64;&#46;&#105;&#116;</a
   ></p
 >