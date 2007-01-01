Write a comment abouth the test here.
*** Markdown input: ***
`\\`

`\`
*** Output of to_html ***
<p
      ><code>\\</code
    ></p
    ><p>``</p
  >
*** Output of to_latex ***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92\char92}

``


*** Output of to_s ***
``
*** Output of to_s ***
``
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		MDElement.new(:inline_code,[],{:raw_code=>"\\\\"})
	 ], {}),
	
	MDElement.new(:paragraph,[	
		"``"
	 ], {})
 ], {})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<p
      ><code>\\</code
    ></p
    ><p>``</p
  >
*** Output of to_latex ***
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char92\char92}

``


*** Output of to_s ***
``
*** Output of to_s ***
``
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[	md_el(:inline_code,[], {:raw_code=>"\\\\"})]),
	md_el(:paragraph,[	"``"])
])
*** Output of Markdown.pl ***
<p><code>\\</code></p>

<p><code>\</code></p>

*** Output of Markdown.pl (parsed) ***
<p
      ><code>\\</code
    ></p
    ><p
      ><code>\</code
    ></p
  >