This shows the use of default attributes list.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph1 {.mio}

Paragraph2 
{#2}

{paragraph}: .maruku-par

*** Output of inspect ***
md_el(:document,[
	md_par(["Paragraph1 ", md_ial([])]),
	md_par(["Paragraph2"], [[:id, "2"]]),
	md_el(:ald,[],{:al=>[[:class, "maruku-par"]], :ald_id=>"paragraph"},[])
],{},[])
*** Output of to_html ***

<p class='maruku-par'>Paragraph1 </p>

<p class='maruku-par' id='2'>Paragraph2</p>

*** Output of to_latex ***
Paragraph1 

Paragraph2


*** Output of to_s ***
Paragraph1 Paragraph2
*** Output of to_s ***
Paragraph1 Paragraph2
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Paragraph1 {.mio}</p>

<p>Paragraph2 
{#2}</p>

<p>{paragraph}: .maruku-par</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph1 {.mio}</p
    ><p>Paragraph2 
{#2}</p
    ><p>{paragraph}: .maruku-par</p
  >