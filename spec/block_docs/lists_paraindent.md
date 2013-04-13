PENDING - Indentation is weird...
*** Parameters: ***
{} # params 
*** Markdown input: ***
*   A list item
    * Foo
    * Bar
      * Bax
    Bap
*   Another list item
*** Output of inspect ***
md_el(:document, md_el(:ul, [
	md_li([
	"A list item",
	md_el(:ul, [
	md_li("Foo", false),
	md_li([
	"Bar",
	md_el(:ul, [
	md_el(:li_span, "Bax", {:want_my_paragraph=>false}),
	md_el(:li_span, "Bap", {:want_my_paragraph=>false})
])
], true)
])
], true),
	md_li(md_par("Another list item"), false)
]))
*** Output of to_html ***
<ul>
<li>A list item

<ul>
<li>Foo</li>

<li>Bar

<ul>
<li>Bax</li>

<li>Bap</li>
</ul>
</li>
</ul>
</li>

<li>Another list item</li>
</ul>
