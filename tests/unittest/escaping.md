Write a comment abouth the test here.
*** Markdown input: ***
 Hello: ! \! \` \{ \} \[ \] \( \) \# \. \! * \* *


Ora, *emphasis*, **bold**, * <- due asterischi-> * , un underscore-> _ , _emphasis_,
 incre*dible*e!


This is `Code with an escape:  -> \` <- ` (after)

This is ``Code with a special: -> ` <- ``(after)

`Start ` of paragraph

End of `paragraph `
*** Output of to_html ***
<p>Hello: ! ! ` { } [ ] ( ) # . ! * * *</p
    ><p>Ora, <em>emphasis</em
      >, <strong>bold</strong
      >, * &lt;- due asterischi-&gt; * , un underscore-&gt; _ , <em>emphasis</em
      >, incre<em>dible</em
      >e!</p
    ><p>This is <tt>Code with an escape:  -&gt; \` &lt;- </tt
      > (after)</p
    ><p>This is <tt>Code with a special: -&gt; ` &lt;- </tt
      >(after)</p
    ><p
      ><tt>Start </tt
      > of paragraph</p
    ><p>End of <tt>paragraph </tt
    ></p
  >
*** Output of to_latex ***
Hello: ! ! ` \{ \} [ ] ( ) \# . ! * * *

Ora, {\em emphasis}, {\bf bold}, * {\tt \char60}- due asterischi-{\tt \char62} * , un underscore-{\tt \char62} \_ , {\em emphasis}, incre{\em dible}e!

This is \colorbox[rgb]{0.94,0.94,0.88}{\tt \char67\char111\char100\char101\char32\char119\char105\char116\char104\char32\char97\char110\char32\char101\char115\char99\char97\char112\char101\char58\char32\char32\char45\char62\char32\char92\char96\char32\char60\char45\char32} (after)

This is \colorbox[rgb]{0.94,0.94,0.88}{\tt \char67\char111\char100\char101\char32\char119\char105\char116\char104\char32\char97\char32\char115\char112\char101\char99\char105\char97\char108\char58\char32\char45\char62\char32\char96\char32\char60\char45\char32}(after)

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char83\char116\char97\char114\char116\char32} of paragraph

End of \colorbox[rgb]{0.94,0.94,0.88}{\tt \char112\char97\char114\char97\char103\char114\char97\char112\char104\char32}


*** Output of to_s ***
Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is  (after)This is (after) of paragraphEnd of 
*** Output of to_s ***
Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is  (after)This is (after) of paragraphEnd of 
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Hello: ! ! ` { } [ ] ( ) # . ! * * *"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Ora, ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {}),
		
		", ",
		
		MDElement.new(:strong,[	
			"bold"
		], {}),
		
		", * <- due asterischi-> * , un underscore-> _ , ",
		
		MDElement.new(:emphasis,[	
			"emphasis"
		], {}),
		
		", incre",
		
		MDElement.new(:emphasis,[	
			"dible"
		], {}),
		
		"e!"
	], {}),
	
	MDElement.new(:paragraph,[	
		"This is ",
		
		MDElement.new(:inline_code,[],{:raw_code=>"Code with an escape:  -> \\` <- "}),
		
		" (after)"
	], {}),
	
	MDElement.new(:paragraph,[	
		"This is ",
		
		MDElement.new(:inline_code,[],{:raw_code=>"Code with a special: -> ` <- "}),
		
		"(after)"
	], {}),
	
	MDElement.new(:paragraph,[	
		MDElement.new(:inline_code,[],{:raw_code=>"Start "}),
		
		" of paragraph"
	], {}),
	
	MDElement.new(:paragraph,[	
		"End of ",
		
		MDElement.new(:inline_code,[],{:raw_code=>"paragraph "})
	], {})
], {})
*** EOF ***




Failed tests:   [:to_html, :inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
-----| WARNING | -----
<p>Hello: ! ! ` { } [ ] ( ) # . ! * * *</p
    ><p>Ora, <em>emphasis</em
      >, <strong>bold</strong
      >, * &lt;- due asterischi-&gt; * , un underscore-&gt; _ , <em>emphasis</em
      >, incre<em>dible</em
      >e!</p
    ><p>This is <code>Code with an escape:  -&gt; \` &lt;- </code
      > (after)</p
    ><p>This is <code>Code with a special: -&gt; ` &lt;- </code
      >(after)</p
    ><p
      ><code>Start </code
      > of paragraph</p
    ><p>End of <code>paragraph </code
    ></p
  >
*** Output of to_latex ***
Hello: ! ! ` \{ \} [ ] ( ) \# . ! * * *

Ora, {\em emphasis}, {\bf bold}, * {\tt \char60}- due asterischi-{\tt \char62} * , un underscore-{\tt \char62} \_ , {\em emphasis}, incre{\em dible}e!

This is \colorbox[rgb]{0.94,0.94,0.88}{\tt \char67\char111\char100\char101\char32\char119\char105\char116\char104\char32\char97\char110\char32\char101\char115\char99\char97\char112\char101\char58\char32\char32\char45\char62\char32\char92\char96\char32\char60\char45\char32} (after)

This is \colorbox[rgb]{0.94,0.94,0.88}{\tt \char67\char111\char100\char101\char32\char119\char105\char116\char104\char32\char97\char32\char115\char112\char101\char99\char105\char97\char108\char58\char32\char45\char62\char32\char96\char32\char60\char45\char32}(after)

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char83\char116\char97\char114\char116\char32} of paragraph

End of \colorbox[rgb]{0.94,0.94,0.88}{\tt \char112\char97\char114\char97\char103\char114\char97\char112\char104\char32}


*** Output of to_s ***
Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is  (after)This is (after) of paragraphEnd of 
*** Output of to_s ***
Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is  (after)This is (after) of paragraphEnd of 
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[	"Hello: ! ! ` { } [ ] ( ) # . ! * * *"]),
	md_el(:paragraph,[
		"Ora, ",
		md_el(:emphasis,[	"emphasis"]),
		", ",
		md_el(:strong,[	"bold"]),
		", * <- due asterischi-> * , un underscore-> _ , ",
		md_el(:emphasis,[	"emphasis"]),
		", incre",
		md_el(:emphasis,[	"dible"]),
		"e!"
	]),
	md_el(:paragraph,[
		"This is ",
		md_el(:inline_code,[], {:raw_code=>"Code with an escape:  -> \\` <- "}),
		" (after)"
	]),
	md_el(:paragraph,[
		"This is ",
		md_el(:inline_code,[], {:raw_code=>"Code with a special: -> ` <- "}),
		"(after)"
	]),
	md_el(:paragraph,[
		md_el(:inline_code,[], {:raw_code=>"Start "}),
		" of paragraph"
	]),
	md_el(:paragraph,[
		"End of ",
		md_el(:inline_code,[], {:raw_code=>"paragraph "})
	])
])
*** Output of Markdown.pl ***
<p>Hello: ! ! ` { } [ ] ( ) # . ! * * *</p>

<p>Ora, <em>emphasis</em>, <strong>bold</strong>, * &lt;- due asterischi-> * , un underscore-> _ , <em>emphasis</em>,
 incre<em>dible</em>e!</p>

<p>This is <code>Code with an escape:  -&gt; \</code> &lt;- ` (after)</p>

<p>This is <code>Code with a special: -&gt; ` &lt;-</code>(after)</p>

<p><code>Start</code> of paragraph</p>

<p>End of <code>paragraph</code></p>

*** Output of Markdown.pl (parsed) ***
<p>Hello: ! ! ` { } [ ] ( ) # . ! * * *</p
    ><p>Ora, <em>emphasis</em
      >, <strong>bold</strong
      >, * &lt;- due asterischi-> * , un underscore-> _ , <em>emphasis</em
      >,
 incre<em>dible</em
      >e!</p
    ><p>This is <code>Code with an escape:  -&gt; \</code
      > &lt;- ` (after)</p
    ><p>This is <code>Code with a special: -&gt; ` &lt;-</code
      >(after)</p
    ><p
      ><code>Start</code
      > of paragraph</p
    ><p>End of <code>paragraph</code
    ></p
  >