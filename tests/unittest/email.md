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
<p>This is an email address: <a href="&#109;&#x61;&#x69;&#x6C;&#116;&#x6F;:a&#x6E;&#100;&#114;&#x65;a&#64;&#105;&#x6E;&#x76;&#x61;&#108;&#x69;&#100;&#46;&#105;&#116;">a&#x6E;&#100;&#114;&#x65;a&#64;&#105;&#x6E;&#x76;&#x61;&#108;&#x69;&#100;&#46;&#105;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#x61;&amp;#x69;&amp;#x6C;&amp;#116;&amp;#x6F;:a&amp;#x6E;&amp;#100;&amp;#114;&amp;#x65;a&amp;#64;&amp;#105;&amp;#x6E;&amp;#x76;&amp;#x61;&amp;#108;&amp;#x69;&amp;#100;&amp;#46;&amp;#105;&amp;#116;'>a&#x6E;&#100;&#114;&#x65;a&#64;&#105;&#x6E;&#x76;&#x61;&#108;&#x69;&#100;&#46;&#105;&#116;</a
   ></p
 >