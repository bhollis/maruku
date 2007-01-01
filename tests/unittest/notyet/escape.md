Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
`\\`

`\`
*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	md_el(:inline_code,[], {:raw_code=>"\\\\"})]),
	md_el(:paragraph,[	"``"])
])
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
*** Output of to_md ***
``
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	md_el(:inline_code,[], {:raw_code=>"\\\\"})]),
	md_el(:paragraph,[	"``"])
])
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
*** Output of to_md ***
``
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