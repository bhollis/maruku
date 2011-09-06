Embed html iframe element
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph1

<iframe src="http://www.youtube.com/"></iframe>

Paragraph2
*** Output of inspect ***
md_el(:document,[
	md_par(["Paragraph1"]),
	md_html('<iframe width="560" height="345" src="http://www.youtube.com/" frameborder="0" allowfullscreen="true"></iframe>'),
	md_par(["Paragraph2"])
],{},[])
*** Output of to_html ***
<p>Paragraph1</p>
<iframe src='http://www.youtube.com/'></iframe>
<p>Paragraph2</p>
*** Output of to_latex ***
Paragraph1

Paragraph2
*** Output of to_md ***
Paragraph1

Paragraph2
*** Output of to_s ***
Paragraph1Paragraph2
