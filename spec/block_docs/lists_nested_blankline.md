PENDING - Nesting lists should handle newlines inbetween list items.
*** Parameters: ***
{} # params 
*** Markdown input: ***
* Bar
  * Bax

  * boo
*** Output of inspect ***
md_el(:document, md_el(:ul, [
	md_li([
	  "Bar",
	  md_el(:ul, [
	    md_li(md_par("Bax"), false),
	    md_li(md_par("Bar"), false)
          ], {}, [])
       ],{},[])
],{},[]))
*** Output of to_html ***
<ul>
<li>Bar

<ul>
<li><p>Bax</p></li>
<li><p>boo</p></li>
</ul>
</li>
</ul>
