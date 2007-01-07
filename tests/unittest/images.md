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
md_el(:document,[
	md_par([
		"This page does not uilizes ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", nil)
	]),
	md_par([
		"Please mouseover to see the title: ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", "Title ok!")
	]),
	md_par([
		"Please mouseover to see the title: ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", "Title ok!")
	]),
	md_par([
		"I'll say it one more time: this page does not use ",
		md_image(["Cascading Style Sheets"], "css")
	]),
	md_par([
		"This is double size: ",
		md_image(["Cascading Style Sheets"], "css2")
	]),
	md_ref_def("css", "http://jigsaw.w3.org/css-validator/images/vcss", {:title=>"Optional title attribute"}),
	md_ref_def("css2", "http://jigsaw.w3.org/css-validator/images/vcss", {:title=>"Optional title attribute"})
],{},[])
*** Output of to_html ***

<p>This page does not uilizes <img src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>I&apos;ll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>This is double size: <img class='external' title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' style='border:0;width:188px;height:131px' /></p>

*** Output of to_latex ***
This page does not uilizes 

Please mouseover to see the title: 

Please mouseover to see the title: 

I'll say it one more time: this page does not use {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

This is double size: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}


*** Output of to_md ***
This page does not uilizes
Cascading Style Sheets

Please mouseover to see the title:
Cascading Style Sheets

Please mouseover to see the title:
Cascading Style Sheets

I'll say it one more time: this page
does not use Cascading Style Sheets

This is double size:
Cascading Style Sheets


*** Output of to_s ***
This page does not uilizes Cascading Style SheetsPlease mouseover to see the title: Cascading Style SheetsPlease mouseover to see the title: Cascading Style SheetsI'll say it one more time: this page does not use Cascading Style SheetsThis is double size: Cascading Style Sheets
*** EOF ***




Failed tests:   [:inspect, :to_html, :to_md, :to_s] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_par([
		"This page does not uilizes ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", nil)
	]),
	md_par([
		"Please mouseover to see the title: ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", "Title ok!")
	]),
	md_par([
		"Please mouseover to see the title: ",
		md_im_image(["Cascading Style Sheets"], "http://jigsaw.w3.org/css-validator/images/vcss", "Title ok!")
	]),
	md_par([
		"I",
		md_entity("rsquo"),
		"ll say it one more time: this page does not use ",
		md_image(["Cascading Style Sheets"], "css")
	]),
	md_par([
		"This is double size: ",
		md_image(["Cascading Style Sheets"], "css2")
	]),
	md_ref_def("css", "http://jigsaw.w3.org/css-validator/images/vcss", {:title=>"Optional title attribute"}),
	md_ref_def("css2", "http://jigsaw.w3.org/css-validator/images/vcss", {:title=>"Optional title attribute"})
],{},[])
*** Output of to_html ***
-----| WARNING | -----

<p>This page does not uilizes <img src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>I&rsquo;ll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' /></p>

<p>This is double size: <img class='external' title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' style='border:0;width:188px;height:131px' /></p>

*** Output of to_latex ***
This page does not uilizes 

Please mouseover to see the title: 

Please mouseover to see the title: 

I'll say it one more time: this page does not use {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}

This is double size: {\bf Images not supported yet (\char104\char116\char116\char112\char58\char47\char47\char106\char105\char103\char115\char97\char119\char46\char119\char51\char46\char111\char114\char103\char47\char99\char115\char115\char45\char118\char97\char108\char105\char100\char97\char116\char111\char114\char47\char105\char109\char97\char103\char101\char115\char47\char118\char99\char115\char115)}


*** Output of to_md ***
-----| WARNING | -----
This page does not uilizes
Cascading Style Sheets

Please mouseover to see the title:
Cascading Style Sheets

Please mouseover to see the title:
Cascading Style Sheets

I ll say it one more time: this page
does not use Cascading Style Sheets

This is double size:
Cascading Style Sheets


*** Output of to_s ***
-----| WARNING | -----
This page does not uilizes Cascading Style SheetsPlease mouseover to see the title: Cascading Style SheetsPlease mouseover to see the title: Cascading Style SheetsIll say it one more time: this page does not use Cascading Style SheetsThis is double size: Cascading Style Sheets
*** Output of Markdown.pl ***
<p>This page does not uilizes <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>Please mouseover to see the title: <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Title ok!" /></p>

<p>I'll say it one more time: this page does not use <img src="http://jigsaw.w3.org/css-validator/images/vcss" alt="Cascading Style Sheets" title="Optional title attribute" /></p>

<p>This is double size: ![Cascading Style Sheets] [css2]</p>

<p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"</p>

*** Output of Markdown.pl (parsed) ***
<p>This page does not uilizes <img title='' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'/
   ></p
   ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'/
   ></p
   ><p>Please mouseover to see the title: <img title='Title ok!' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'/
   ></p
   ><p>I'll say it one more time: this page does not use <img title='Optional title attribute' src='http://jigsaw.w3.org/css-validator/images/vcss' alt='Cascading Style Sheets'/
   ></p
   ><p>This is double size: ![Cascading Style Sheets] [css2]</p
   ><p>[css2]: http://jigsaw.w3.org/css-validator/images/vcss "Optional title attribute" class=external
   style="border:0;width:188px;height:131px"</p
 >