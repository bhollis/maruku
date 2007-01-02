Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***


This is an email address: <andrea@invalid.it>
	
*** Output of inspect ***
md_el(:document,[
	md_par(["This is an email address: ", md_email("andrea@invalid.it")])
] )
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
    ></p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116}


*** Output of to_s ***
This is an email address: 
*** Output of to_md ***
This is an email address: 
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#x6D;&#x61;i&#x6C;&#116;o:&#x61;&#110;&#100;&#x72;&#x65;&#x61;&#64;&#x69;&#110;&#x76;a&#x6C;&#x69;&#100;&#46;&#x69;&#116;">&#x61;&#110;&#100;&#x72;&#x65;&#x61;&#64;&#x69;&#110;&#x76;a&#x6C;&#x69;&#100;&#46;&#x69;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#x61;i&amp;#x6C;&amp;#116;o:&amp;#x61;&amp;#110;&amp;#100;&amp;#x72;&amp;#x65;&amp;#x61;&amp;#64;&amp;#x69;&amp;#110;&amp;#x76;a&amp;#x6C;&amp;#x69;&amp;#100;&amp;#46;&amp;#x69;&amp;#116;'>&#x61;&#110;&#100;&#x72;&#x65;&#x61;&#64;&#x69;&#110;&#x76;a&#x6C;&#x69;&#100;&#46;&#x69;&#116;</a
    ></p
  >