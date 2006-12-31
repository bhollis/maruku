`\\`

`\`
***EOF***
<p
      ><code>\\</code
    ></p
    ><p>``</p
  >
***EOF***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92\char92}

``


***EOF***
``
***EOF***
``
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		MDElement.new(:inline_code,[],{:raw_code=>"\\\\"})
	 ], {}),
	
	MDElement.new(:paragraph,[	
		"``"
	 ], {})
 ], {})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p
      ><code>\\</code
    ></p
    ><p>``</p
  >
***EOF***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92\char92}

``


***EOF***
``
***EOF***
``
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		MDElement.new(:inline_code,[],{:raw_code=>"\\\\"})
	 ], {}),
	
	MDElement.new(:paragraph,[	
		"``"
	 ], {})
 ], {})
***EOF***
<p><code>\\</code></p>

<p><code>\</code></p>

***EOF***
<p
      ><code>\\</code
    ></p
    ><p
      ><code>\</code
    ></p
  >