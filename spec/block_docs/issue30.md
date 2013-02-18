PENDING - List markers typically start at the left margin, but may be indented by up to three spaces. https://github.com/bhollis/maruku/issues/30
*** Parameters: ***
{}
*** Markdown input: ***
This is a list:

  * a list

And this:

   * still a list
*** Output of inspect ***
md_el(:document, [])
*** Output of to_html ***
<p>This is a list:</p>

<ul>
<li>a list</li>
</ul>

<p>And this:</p>

<ul>
<li>still a list</li>
</ul>
