Write a comment abouth the test here.
*** Markdown input: ***


This is an email address: <andrea@invalid.it>
	
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


*** Output of to_s ***
This is an email address:  
*** Output of to_s ***
This is an email address:  
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is an email address: ",
		
		MDElement.new(:email_address,[],{:email=>"andrea@invalid.it"}),
		
		" "
	], {})
], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


*** Output of to_s ***
This is an email address:  
*** Output of to_s ***
This is an email address:  
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[	md_el(:paragraph,[
		"This is an email address: ",
		md_el(:email_address,[], {:email=>"andrea@invalid.it"}),
		" "
	])])
*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#109;&#x61;i&#108;&#x74;&#111;:&#97;&#110;&#100;&#114;&#101;&#97;&#64;&#x69;n&#x76;&#97;&#x6C;&#x69;&#x64;&#46;&#x69;&#116;">&#97;&#110;&#100;&#114;&#101;&#97;&#64;&#x69;n&#x76;&#97;&#x6C;&#x69;&#x64;&#46;&#x69;&#116;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#109;&amp;#x61;i&amp;#108;&amp;#x74;&amp;#111;:&amp;#97;&amp;#110;&amp;#100;&amp;#114;&amp;#101;&amp;#97;&amp;#64;&amp;#x69;n&amp;#x76;&amp;#97;&amp;#x6C;&amp;#x69;&amp;#x64;&amp;#46;&amp;#x69;&amp;#116;'>&#97;&#110;&#100;&#114;&#101;&#97;&#64;&#x69;n&#x76;&#97;&#x6C;&#x69;&#x64;&#46;&#x69;&#116;</a
    ></p
  >