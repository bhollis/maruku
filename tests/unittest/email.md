Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***


This is an email address: <andrea@invalid.it>
	
*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[
		"This is an email address: ",
		md_el(:email_address,[], {:email=>"andrea@invalid.it"}),
		" "
	])])
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


*** Output of to_s ***
This is an email address:  
*** Output of to_md ***
This is an email address:  
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:paragraph,[
		"This is an email address: ",
		md_el(:email_address,[], {:email=>"andrea@invalid.it"}),
		" "
	])])
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


*** Output of to_s ***
This is an email address:  
*** Output of to_md ***
This is an email address:  
*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#109;&#97;i&#108;&#116;&#x6F;:&#x61;&#110;&#x64;&#x72;&#x65;&#97;&#64;&#105;&#110;va&#108;&#105;&#x64;&#x2E;&#x69;&#x74;">&#x61;&#110;&#x64;&#x72;&#x65;&#97;&#64;&#105;&#110;va&#108;&#105;&#x64;&#x2E;&#x69;&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#97;i&amp;#108;&amp;#116;&amp;#x6F;:&amp;#x61;&amp;#110;&amp;#x64;&amp;#x72;&amp;#x65;&amp;#97;&amp;#64;&amp;#105;&amp;#110;va&amp;#108;&amp;#105;&amp;#x64;&amp;#x2E;&amp;#x69;&amp;#x74;'>&#x61;&#110;&#x64;&#x72;&#x65;&#97;&#64;&#105;&#110;va&#108;&#105;&#x64;&#x2E;&#x69;&#x74;</a
    ></p
  >