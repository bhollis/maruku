This shows the use of default attributes list.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph2 
{#2}

{paragraph}: .maruku-par

*** Output of inspect ***
md_el(:document,[
	md_par(["Paragraph2"], [[:id, "2"]]),
	md_el(:ald,[],{:ald_id=>"paragraph",:ald=>[[:class, "maruku-par"]]},[])
],{},[])
*** Output of to_html ***

<p class='maruku-par' id='2'>Paragraph2</p>

*** Output of to_latex ***
Paragraph2


*** Output of to_md ***
Paragraph2


*** Output of to_s ***
Paragraph2
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Paragraph2 
{#2}</p>

<p>{paragraph}: .maruku-par</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph2 
{#2}</p
    ><p>{paragraph}: .maruku-par</p
  >