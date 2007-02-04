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
<p>This is an email address: <a href="&#109;&#97;&#105;&#108;&#x74;o:&#97;n&#x64;&#114;&#101;&#x61;&#64;&#105;&#x6E;&#118;&#97;&#108;i&#x64;&#46;&#105;&#x74;">&#97;n&#x64;&#114;&#101;&#x61;&#64;&#105;&#x6E;&#118;&#97;&#108;i&#x64;&#46;&#105;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#97;&amp;#105;&amp;#108;&amp;#x74;o:&amp;#97;n&amp;#x64;&amp;#114;&amp;#101;&amp;#x61;&amp;#64;&amp;#105;&amp;#x6E;&amp;#118;&amp;#97;&amp;#108;i&amp;#x64;&amp;#46;&amp;#105;&amp;#x74;'>&#97;n&#x64;&#114;&#101;&#x61;&#64;&#105;&#x6E;&#118;&#97;&#108;i&#x64;&#46;&#105;&#x74;</a
   ></p
 >