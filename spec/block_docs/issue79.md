PENDING - Non-ASCII characters in a PRE tag. See https://github.com/bhollis/maruku/issues/79
*** Parameters: ***
{}
*** Markdown input: ***
<pre>
á é í ó ú
</pre>
*** Output of inspect ***
md_el(:document, md_html("<pre>\ná é í ó ú\n</pre>"))
*** Output of to_html ***
<pre>
á é í ó ú
</pre>
