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
<p>This is an email address: <a href="&#109;&#x61;&#x69;l&#x74;&#x6F;:a&#110;&#100;r&#x65;&#97;&#64;&#105;&#110;v&#x61;l&#x69;&#x64;&#x2E;&#x69;&#116;">a&#110;&#100;r&#x65;&#97;&#64;&#105;&#110;v&#x61;l&#x69;&#x64;&#x2E;&#x69;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#x61;&amp;#x69;l&amp;#x74;&amp;#x6F;:a&amp;#110;&amp;#100;r&amp;#x65;&amp;#97;&amp;#64;&amp;#105;&amp;#110;v&amp;#x61;l&amp;#x69;&amp;#x64;&amp;#x2E;&amp;#x69;&amp;#116;'>a&#110;&#100;r&#x65;&#97;&#64;&#105;&#110;v&#x61;l&#x69;&#x64;&#x2E;&#x69;&#116;</a
    ></p
  >