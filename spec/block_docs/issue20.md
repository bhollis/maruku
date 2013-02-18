PENDING - Weird header doesn't work. https://github.com/bhollis/maruku/issues/20
*** Parameters: ***
{}
*** Markdown input: ***
# {hi}
*** Output of inspect ***
md_el(:document, [
  md_header(1, '{h1}')
])
*** Output of to_html ***
<h1 id="hi">{hi}</h1>
