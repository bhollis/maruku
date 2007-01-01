Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

This page does not uilizes ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss)


Please mouseover to see the title: ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss "Title ok!")

Please mouseover to see the title: ![Cascading Style Sheets](http://jigsaw.w3.org/css-validator/images/vcss 'Title ok!')


I'll say it one more time: this page does not use ![Cascading Style Sheets] [css]

This is double size: ![Cascading Style Sheets] [css2]



[css]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute"

[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"



*** Output of inspect ***
#<Maruku:0x107befc @refs={"css"=>{:url=>"http://jigsaw.w3.org/css-validator/images/vcss", :title=>"Optional title attribute"}, "css2"=>{:class=>"external", :style=>"border:0;width:188px;height:131px", :url=>"http://jigsaw.w3.org/css-validator/images/vcss", :title=>"Optional title attribute"}, "dummy_0"=>{:url=>"http://jigsaw.w3.org/css-validator/images/vcss", :title=>nil}, "dummy_1"=>{:url=>"http://jigsaw.w3.org/css-validator/images/vcss", :title=>"Title ok!"}, "dummy_2"=>{:url=>"http://jigsaw.w3.org/css-validator/images/vcss", :title=>"Title ok!"}}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x1079fa8 @node_type=:paragraph, @doc=#<Maruku:0x107befc ...>, @children=["This page does not uilizes ", #<MDElement:0x107a9e4 @node_type=:image, @doc=#<Maruku:0x107befc ...>, @children=[], @meta={:ref_id=>"dummy_0"}>], @meta={}>, #<MDElement:0x10782ac @node_type=:paragraph, @doc=#<Maruku:0x107befc ...>, @children=["Please mouseover to see the title: ", #<MDElement:0x1078ce8 @node_type=:image, @doc=#<Maruku:0x107befc ...>, @children=[], @meta={:ref_id=>"dummy_1"}>], @meta={}>, #<MDElement:0x1076650 @node_type=:paragraph, @doc=#<Maruku:0x107befc ...>, @children=["Please mouseover to see the title: ", #<MDElement:0x107708c @node_type=:image, @doc=#<Maruku:0x107befc ...>, @children=[], @meta={:ref_id=>"dummy_2"}>], @meta={}>, #<MDElement:0x1073f2c @node_type=:paragraph, @doc=#<Maruku:0x107befc ...>, @children=["I'll say it one more time: this page does not use ", #<MDElement:0x10754a8 @node_type=:image, @doc=#<Maruku:0x107befc ...>, @children=[], @meta={:ref_id=>"css"}>], @meta={}>, #<MDElement:0x1071f60 @node_type=:paragraph, @doc=#<Maruku:0x107befc ...>, @children=["This is double size: ", #<MDElement:0x1072adc @node_type=:image, @doc=#<Maruku:0x107befc ...>, @children=[], @meta={:ref_id=>"css2"}>], @meta={}>], @doc=#<Maruku:0x107befc ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>This page does not uilizes <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>I&apos;ll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>This is double size: <img class='external' title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' style='border:0;width:188px;height:131px'
      /></p
  >
*** Output of to_latex ***
This page does not uilizes {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

Please mouseover to see the title: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

I'll say it one more time: this page does not use {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

This is double size: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}


*** Output of to_s ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** Output of to_md ***
This page does not uilizes Please mouseover to see the title: Please mouseover to see the title: I'll say it one more time: this page does not use This is double size: 
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This page does not uilizes <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>I'll say it one more time: this page does not use <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Optional title attribute" /></p>

<p>This is double size: ![Cascading Style Sheets] [css2]</p>

<p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"</p>

*** Output of Markdown.pl (parsed) ***
<p>This page does not uilizes <img title='' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>I'll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'
      /></p
    ><p>This is double size: ![Cascading Style Sheets] [css2]</p
    ><p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
 style="border:0;width:188px;height:131px"</p
  >