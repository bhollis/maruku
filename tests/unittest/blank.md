Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

Linea 1

Linea 2
*** Output of inspect ***
#<Maruku:0x10aabbc @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10a9154 @node_type=:paragraph, @doc=#<Maruku:0x10aabbc ...>, @children=["Linea 1"], @meta={}>, #<MDElement:0x10a79bc @node_type=:paragraph, @doc=#<Maruku:0x10aabbc ...>, @children=["Linea 2"], @meta={}>], @doc=#<Maruku:0x10aabbc ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>Linea 1</p
    ><p>Linea 2</p
  >
*** Output of to_latex ***
Linea 1

Linea 2


*** Output of to_s ***
Linea 1Linea 2
*** Output of to_md ***
Linea 1Linea 2
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Linea 1</p>

<p>Linea 2</p>

*** Output of Markdown.pl (parsed) ***
<p>Linea 1</p
    ><p>Linea 2</p
  >