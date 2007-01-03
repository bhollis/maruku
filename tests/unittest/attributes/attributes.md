This is a simple test for attributes
*** Parameters: ***
{}
*** Markdown input: ***
Header with attributes	{#header1}	
----------------------

### Header with attributes ###	{#header2}	

Paragraph with a.
{#par1}


Paragraph with *emphasis*{hello}
   {#par2}

{hello}: .chello
*** Output of inspect ***
md_el(:document,[
	md_el(:header,["Header with attributes"] , {:id=>"header1", :level=>2}),
	 md_el(:header,["Header with attributes"] , {:id=>"header2", :level=>3}),
	 md_par(["Paragraph with a. ", md_ial([[:id, "par1"]])]),
	 md_par([
		"Paragraph with ",
		 md_em(["emphasis"]),
		 md_ial([[:ref, "hello"]]),
		 " ",
		 md_ial([[:id, "par2"]])
	])
] )
*** Output of to_html ***
#<RuntimeError: Object does not answer to to_html_ial: MDElement md_ial([[:id, "par1"]])>
./lib/maruku/to_html.rb:611:in `array_to_html'
./lib/maruku/to_html.rb:606:in `each'
./lib/maruku/to_html.rb:606:in `array_to_html'
./lib/maruku/to_html.rb:601:in `children_to_html'
./lib/maruku/to_html.rb:231:in `wrap_as_element'
./lib/maruku/to_html.rb:243:in `to_html_paragraph'
./lib/maruku/to_html.rb:614:in `send'
./lib/maruku/to_html.rb:614:in `array_to_html'
./lib/maruku/to_html.rb:606:in `each'
./lib/maruku/to_html.rb:606:in `array_to_html'
./lib/maruku/to_html.rb:601:in `children_to_html'
./lib/maruku/to_html.rb:36:in `to_html'
bin/marutest:47:in `run_test'
bin/marutest:44:in `each'
bin/marutest:44:in `run_test'
bin/marutest:207:in `marutest'
bin/marutest:205:in `each'
bin/marutest:205:in `marutest'
bin/marutest:275
*** Output of to_latex ***
#<RuntimeError: Object does not answer to to_latex_ial: MDElement md_ial([[:id, "par1"]])>
./lib/maruku/to_latex.rb:362:in `array_to_latex'
./lib/maruku/to_latex.rb:357:in `each'
./lib/maruku/to_latex.rb:357:in `array_to_latex'
./lib/maruku/to_latex.rb:352:in `children_to_latex'
./lib/maruku/to_latex.rb:76:in `to_latex_paragraph'
./lib/maruku/to_latex.rb:365:in `send'
./lib/maruku/to_latex.rb:365:in `array_to_latex'
./lib/maruku/to_latex.rb:357:in `each'
./lib/maruku/to_latex.rb:357:in `array_to_latex'
./lib/maruku/to_latex.rb:352:in `children_to_latex'
./lib/maruku/to_latex.rb:24:in `to_latex'
bin/marutest:49:in `send'
bin/marutest:49:in `run_test'
bin/marutest:44:in `each'
bin/marutest:44:in `run_test'
bin/marutest:207:in `marutest'
bin/marutest:205:in `each'
bin/marutest:205:in `marutest'
bin/marutest:275
*** Output of to_s ***
Header with attributesHeader with attributesParagraph with a. Paragraph with emphasis 
*** Output of to_s ***
Header with attributesHeader with attributesParagraph with a. Paragraph with emphasis 
*** EOF ***




Failed tests:   [] 

*** Output of inspect ***
md_el(:document,[
	md_el(:header,["Header with attributes"] , {:id=>"header1", :level=>2}),
	 md_el(:header,["Header with attributes"] , {:id=>"header2", :level=>3}),
	 md_par(["Paragraph with a. ", md_ial([[:id, "par1"]])]),
	 md_par([
		"Paragraph with ",
		 md_em(["emphasis"]),
		 md_ial([[:ref, "hello"]]),
		 " ",
		 md_ial([[:id, "par2"]])
	])
] )
*** Output of to_html ***
#<RuntimeError: Object does not answer to to_html_ial: MDElement md_ial([[:id, "par1"]])>
./lib/maruku/to_html.rb:611:in `array_to_html'
./lib/maruku/to_html.rb:606:in `each'
./lib/maruku/to_html.rb:606:in `array_to_html'
./lib/maruku/to_html.rb:601:in `children_to_html'
./lib/maruku/to_html.rb:231:in `wrap_as_element'
./lib/maruku/to_html.rb:243:in `to_html_paragraph'
./lib/maruku/to_html.rb:614:in `send'
./lib/maruku/to_html.rb:614:in `array_to_html'
./lib/maruku/to_html.rb:606:in `each'
./lib/maruku/to_html.rb:606:in `array_to_html'
./lib/maruku/to_html.rb:601:in `children_to_html'
./lib/maruku/to_html.rb:36:in `to_html'
bin/marutest:47:in `run_test'
bin/marutest:44:in `each'
bin/marutest:44:in `run_test'
bin/marutest:207:in `marutest'
bin/marutest:205:in `each'
bin/marutest:205:in `marutest'
bin/marutest:275
*** Output of to_latex ***
#<RuntimeError: Object does not answer to to_latex_ial: MDElement md_ial([[:id, "par1"]])>
./lib/maruku/to_latex.rb:362:in `array_to_latex'
./lib/maruku/to_latex.rb:357:in `each'
./lib/maruku/to_latex.rb:357:in `array_to_latex'
./lib/maruku/to_latex.rb:352:in `children_to_latex'
./lib/maruku/to_latex.rb:76:in `to_latex_paragraph'
./lib/maruku/to_latex.rb:365:in `send'
./lib/maruku/to_latex.rb:365:in `array_to_latex'
./lib/maruku/to_latex.rb:357:in `each'
./lib/maruku/to_latex.rb:357:in `array_to_latex'
./lib/maruku/to_latex.rb:352:in `children_to_latex'
./lib/maruku/to_latex.rb:24:in `to_latex'
bin/marutest:49:in `send'
bin/marutest:49:in `run_test'
bin/marutest:44:in `each'
bin/marutest:44:in `run_test'
bin/marutest:207:in `marutest'
bin/marutest:205:in `each'
bin/marutest:205:in `marutest'
bin/marutest:275
*** Output of to_s ***
Header with attributesHeader with attributesParagraph with a. Paragraph with emphasis 
*** Output of to_s ***
Header with attributesHeader with attributesParagraph with a. Paragraph with emphasis 
*** Output of Markdown.pl ***
<h2>Header with attributes  {#header1}  </h2>

<h3>Header with attributes ###  {#header2}</h3>

<p>Paragraph with a.
{#par1}</p>

<p>Paragraph with <em>emphasis</em>{hello}
   {#par2}</p>

<p>{hello}: .chello</p>

*** Output of Markdown.pl (parsed) ***
<h2>Header with attributes {#header1} </h2
    ><h3>Header with attributes ### {#header2}</h3
    ><p>Paragraph with a.
{#par1}</p
    ><p>Paragraph with <em>emphasis</em
      >{hello}
 {#par2}</p
    ><p>{hello}: .chello</p
  >