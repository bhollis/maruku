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




Failed tests:   [:to_latex] 

*** Output of inspect ***
md_el(:document,[
	md_par(["This is an email address: ", md_email("andrea@invalid.it")])
],{},[])
*** Output of to_html ***

<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a></p>

*** Output of to_latex ***
-----| WARNING | -----
This is an email address: \href{mailto:andrea@invalid.it}{andrea\char64invalid\char46it}


*** Output of to_md ***
This is an email address:


*** Output of to_s ***
This is an email address: 
*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#x6D;&#97;&#105;&#108;&#x74;&#x6F;:&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;&#105;&#110;&#x76;a&#108;&#x69;&#100;&#x2E;i&#x74;">&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;&#105;&#110;&#x76;a&#108;&#x69;&#100;&#x2E;i&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#97;&amp;#105;&amp;#108;&amp;#x74;&amp;#x6F;:&amp;#x61;&amp;#x6E;&amp;#100;&amp;#x72;&amp;#x65;&amp;#97;&amp;#64;&amp;#105;&amp;#110;&amp;#x76;a&amp;#108;&amp;#x69;&amp;#100;&amp;#x2E;i&amp;#x74;'>&#x61;&#x6E;&#100;&#x72;&#x65;&#97;&#64;&#105;&#110;&#x76;a&#108;&#x69;&#100;&#x2E;i&#x74;</a
   ></p
 >