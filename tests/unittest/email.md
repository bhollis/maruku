

This is an email address: <andrea@invalid.it>
	
***EOF***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
***EOF***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


***EOF***
This is an email address:  
***EOF***
This is an email address:  
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is an email address: ",
		
		MDElement.new(:email_address,[],{:email=>"andrea@invalid.it"}),
		
		" "
	], {})
], {})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
***EOF***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


***EOF***
This is an email address:  
***EOF***
This is an email address:  
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is an email address: ",
		
		MDElement.new(:email_address,[],{:email=>"andrea@invalid.it"}),
		
		" "
	], {})
], {})
***EOF***
<p>This is an email address: <a href="&#x6D;&#x61;i&#x6C;&#x74;&#x6F;:&#x61;&#x6E;d&#x72;&#101;&#x61;&#64;&#x69;n&#x76;&#x61;&#108;&#105;&#x64;&#46;&#x69;&#116;">&#x61;&#x6E;d&#x72;&#101;&#x61;&#64;&#x69;n&#x76;&#x61;&#108;&#105;&#x64;&#46;&#x69;&#116;</a></p>

***EOF***
<p>This is an email address: <a href='&amp;#x6D;&amp;#x61;i&amp;#x6C;&amp;#x74;&amp;#x6F;:&amp;#x61;&amp;#x6E;d&amp;#x72;&amp;#101;&amp;#x61;&amp;#64;&amp;#x69;n&amp;#x76;&amp;#x61;&amp;#108;&amp;#105;&amp;#x64;&amp;#46;&amp;#x69;&amp;#116;'>&#x61;&#x6E;d&#x72;&#101;&#x61;&#64;&#x69;n&#x76;&#x61;&#108;&#105;&#x64;&#46;&#x69;&#116;</a
    ></p
  >