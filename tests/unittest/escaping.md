Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
 Hello: ! \! \` \{ \} \[ \] \( \) \# \. \! * \* *


Ora, *emphasis*, **bold**, * <- due asterischi-> * , un underscore-> _ , _emphasis_,
 incre*dible*e!


This is `Code with an escape:  -> \` <- ` (after)

This is ``Code with a special: -> ` <- ``(after)

`Start ` of paragraph

End of `paragraph `
*** Output of inspect ***
#<Maruku:0x102f6d8 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x102d838 @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=["Hello: ! ! ` { } [ ] ( ) # . ! * * *"], @meta={}>, #<MDElement:0x102af84 @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=["Ora, ", #<MDElement:0x102b9c0 @node_type=:emphasis, @doc=#<Maruku:0x102f6d8 ...>, @children=["emphasis"], @meta={}>, ", ", #<MDElement:0x102bd44 @node_type=:strong, @doc=#<Maruku:0x102f6d8 ...>, @children=["bold"], @meta={}>, ", * <- due asterischi-> * , un underscore-> _ , ", #<MDElement:0x102b4fc @node_type=:emphasis, @doc=#<Maruku:0x102f6d8 ...>, @children=["emphasis"], @meta={}>, ", incre", #<MDElement:0x102b808 @node_type=:emphasis, @doc=#<Maruku:0x102f6d8 ...>, @children=["dible"], @meta={}>, "e!"], @meta={}>, #<MDElement:0x1028fa4 @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=["This is ", #<MDElement:0x102a0c0 @node_type=:inline_code, @doc=#<Maruku:0x102f6d8 ...>, @children=[], @meta={:raw_code=>"Code with an escape:  -> \\` <- "}>, " (after)"], @meta={}>, #<MDElement:0x1027014 @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=["This is ", #<MDElement:0x10281d0 @node_type=:inline_code, @doc=#<Maruku:0x102f6d8 ...>, @children=[], @meta={:raw_code=>"Code with a special: -> ` <- "}>, "(after)"], @meta={}>, #<MDElement:0x1025318 @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=[#<MDElement:0x1026218 @node_type=:inline_code, @doc=#<Maruku:0x102f6d8 ...>, @children=[], @meta={:raw_code=>"Start "}>, " of paragraph"], @meta={}>, #<MDElement:0x102375c @node_type=:paragraph, @doc=#<Maruku:0x102f6d8 ...>, @children=["End of ", #<MDElement:0x1024648 @node_type=:inline_code, @doc=#<Maruku:0x102f6d8 ...>, @children=[], @meta={:raw_code=>"paragraph "}>], @meta={}>], @doc=#<Maruku:0x102f6d8 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
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
*** Output of to_md ***
Hello: ! ! ` { } [ ] ( ) # . ! * * *Ora, emphasis, bold, * <- due asterischi-> * , un underscore-> _ , emphasis, incrediblee!This is  (after)This is (after) of paragraphEnd of 
*** EOF ***



	OK!



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