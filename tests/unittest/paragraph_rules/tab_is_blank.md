Paragraphs eat blank lines.
The following are two paragraphs:
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph1
	
Paragraph2
*** Output of inspect ***
md_el(:document,[md_par(["Paragraph1"]), md_par(["Paragraph2"])] )
*** Output of to_html ***
<p>Paragraph1 Paragraph2</p
  >
*** Output of to_latex ***
Paragraph1  Paragraph2


*** Output of to_s ***
Paragraph1  Paragraph2
*** Output of to_md ***
Paragraph1  Paragraph2
*** EOF ***




Failed tests:   [:inspect] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[md_par(["Paragraph1  Paragraph2"])] )
*** Output of to_html ***
<p>Paragraph1 Paragraph2</p
  >
*** Output of to_latex ***
Paragraph1  Paragraph2


*** Output of to_s ***
Paragraph1  Paragraph2
*** Output of to_md ***
Paragraph1  Paragraph2
*** Output of Markdown.pl ***
<p>Paragraph1</p>

<p>Paragraph2</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph1</p
    ><p>Paragraph2</p
  >