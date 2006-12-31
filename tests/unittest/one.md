One line
***EOF***
<p>One line</p
  >
***EOF***
One line


***EOF***
One line
***EOF***
One line
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"One line"
	], {})
], {})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>One line</p
  >
***EOF***
One line


***EOF***
One line
***EOF***
One line
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"One line"
	], {})
], {})
***EOF***
<p>One line</p>

***EOF***
<p>One line</p
  >