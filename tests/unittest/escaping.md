This should threat the last as a literal asterisk.
*** Parameters: ***
{:on_error=>:warning}
*** Markdown input: ***
 Hello: ! \! \` \{ \} \[ \] \( \) \# \. \! * \* *


Ora, *emphasis*, **bold**, * <- due asterischi-> * , un underscore-> _ , _emphasis_,
 incre*dible*e!

This is ``Code with a special: -> ` <- ``(after)

`Start ` of paragraph

End of `paragraph `
*** Output of inspect ***
md_el(:document,[
	md_par([" Hello: ! ! ` { } [ ] ( ) # . ! * * *"]),
	 md_par([
		"Ora, ",
		 md_em(["emphasis"]),
		 ", ",
		 md_strong(["bold"]),
		 ", * <- due asterischi-> * , un underscore-> _ , ",
		 md_em(["emphasis"]),
		 ", incre",
		 md_em(["dible"]),
		 "e!"
	]),
	 md_par(["This is ", md_code("Code with a special: -> ` <-"), "(after)"]),
	 md_par([md_code("Start "), " of paragraph"]),
	 md_par(["End of ", md_code("paragraph ")])
] , {:on_error=>:warning})
*** Output of to_html ***

<p> Hello: ! ! ` { } [ ] ( ) # . ! * * *</p>

<p>Ora, <em>emphasis</em>, <strong>bold</strong>, * &lt;- due asterischi-&gt; * , un underscore-&gt; _ , <em>emphasis</em>, incre<em>dible</em>e!</p>

<p>This is <code>Code with a special: -&gt; ` &lt;-</code>(after)</p>

<p><code>Start </code> of paragraph</p>

<p>End of <code>paragraph </code></p>

*** Output of to_latex ***
 Hello: ! ! ` \{ \} [ ] ( ) \# . ! * * *

Ora, {\em emphasis}, {\bf bold}, * {\tt \char60}- due asterischi-{\tt \char62} * , un underscore-{\tt \char62} \_ , {\em emphasis}, incre{\em dible}e!

This is \colorbox[rgb]{0.94,0.94,0.88}{\tt \char67\char111\char100\char101\char32\char119\char105\char116\char104\char32\char97\char32\char115\char112\char101\char99\char105\char97\char108\char58\char32\char45\char62\char32\char96\char32\char60\char45}(after)

\colorbox[rgb]{0.94,0.94,0.88}{\tt \char83\char116\char97\char114\char116\char32} of paragraph

End of \colorbox[rgb]{0.94,0.94,0.88}{\tt \char112\char97\char114\char97\char103\char114\char97\char112\char104\char32}


*** Output of to_s ***
 Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is (after) of paragraphEnd of 
*** Output of to_s ***
 Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is (after) of paragraphEnd of 
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Hello: ! ! ` { } [ ] ( ) # . ! * * *</p>

<p>Ora, <em>emphasis</em>, <strong>bold</strong>, * &lt;- due asterischi-> * , un underscore-> _ , <em>emphasis</em>,
 incre<em>dible</em>e!</p>

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
   ><p>This is <code>Code with a special: -&gt; ` &lt;-</code
     >(after)</p
   ><p
     ><code>Start</code
     > of paragraph</p
   ><p>End of <code>paragraph</code
   ></p
 >