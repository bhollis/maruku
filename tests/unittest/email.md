

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
		
		MDElement.new(:email_address,[],
			{:email=>"andrea@invalid.it"}),
		
		" "],
		{})],
	{})
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
		
		MDElement.new(:email_address,[],
			{:email=>"andrea@invalid.it"}),
		
		" "],
		{})],
	{})
***EOF***
<p>This is an email address: <a href="&#109;&#97;&#105;&#x6C;&#116;&#111;:&#x61;nd&#x72;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#100;&#46;&#105;&#x74;">&#x61;nd&#x72;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#100;&#46;&#105;&#x74;</a></p>

***EOF***
<p>This is an email address: <a href='&amp;#109;&amp;#97;&amp;#105;&amp;#x6C;&amp;#116;&amp;#111;:&amp;#x61;nd&amp;#x72;&amp;#101;&amp;#97;&amp;#64;&amp;#105;&amp;#x6E;&amp;#x76;&amp;#x61;&amp;#x6C;&amp;#x69;&amp;#100;&amp;#46;&amp;#105;&amp;#x74;'>&#x61;nd&#x72;&#101;&#97;&#64;&#105;&#x6E;&#x76;&#x61;&#x6C;&#x69;&#100;&#46;&#105;&#x74;</a
    ></p
  >