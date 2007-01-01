Paragraphs eats everything, but not link definitions.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph
[google1]: #

Paragraph
 [google2]: #

Paragraph
  [google3]: #

*** Output of inspect ***
md_el(:document,[[md_par(["Paragraph"]), md_par(["Paragraph"]), md_par(["Paragraph"])]] )
*** Output of to_html ***
<p>Paragraph [google1]: #</p
    ><p>Paragraph [google2]: #</p
    ><p>Paragraph [google3]: #</p
  >
*** Output of to_latex ***
Paragraph [google1]: \#

Paragraph [google2]: \#

Paragraph [google3]: \#


*** Output of to_s ***
Paragraph [google1]: #Paragraph [google2]: #Paragraph [google3]: #
*** Output of to_md ***
Paragraph [google1]: #Paragraph [google2]: #Paragraph [google3]: #
*** EOF ***




Failed tests:   [:inspect] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_par(["Paragraph [google1]: #"]),
	md_par(["Paragraph [google2]: #"]),
	md_par(["Paragraph [google3]: #"])
] )
*** Output of to_html ***
<p>Paragraph [google1]: #</p
    ><p>Paragraph [google2]: #</p
    ><p>Paragraph [google3]: #</p
  >
*** Output of to_latex ***
Paragraph [google1]: \#

Paragraph [google2]: \#

Paragraph [google3]: \#


*** Output of to_s ***
Paragraph [google1]: #Paragraph [google2]: #Paragraph [google3]: #
*** Output of to_md ***
Paragraph [google1]: #Paragraph [google2]: #Paragraph [google3]: #
*** Output of Markdown.pl ***
<p>Paragraph
Paragraph
Paragraph</p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph
Paragraph
Paragraph</p
  >