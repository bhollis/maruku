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
<p>This is an email address: <a href="&#109;&#97;&#105;&#108;&#116;&#111;:a&#x6E;&#x64;&#x72;&#x65;a&#64;&#105;&#110;&#x76;&#x61;&#x6C;&#x69;&#100;.&#x69;&#x74;">a&#x6E;&#x64;&#x72;&#x65;a&#64;&#105;&#110;&#x76;&#x61;&#x6C;&#x69;&#100;.&#x69;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#97;&amp;#105;&amp;#108;&amp;#116;&amp;#111;:a&amp;#x6E;&amp;#x64;&amp;#x72;&amp;#x65;a&amp;#64;&amp;#105;&amp;#110;&amp;#x76;&amp;#x61;&amp;#x6C;&amp;#x69;&amp;#100;.&amp;#x69;&amp;#x74;'>a&#x6E;&#x64;&#x72;&#x65;a&#64;&#105;&#110;&#x76;&#x61;&#x6C;&#x69;&#100;.&#x69;&#x74;</a
   ></p
 >