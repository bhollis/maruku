Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

The HTML specification is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium



Operation Tigra Genesis is going well.

*[Tigra Genesis]:
*** Output of inspect ***
#<Maruku:0x10c5b9c @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10c3fa4 @node_type=:paragraph, @doc=#<Maruku:0x10c5b9c ...>, @children=["The ", #<MDElement:0x10c21f4 @node_type=:abbreviation, @doc=#<Maruku:0x10c5b9c ...>, @children=["HTML"], @meta={:title=>"Hyper Text Markup Language"}>, " specification is maintained by the ", #<MDElement:0x10c1e48 @node_type=:abbreviation, @doc=#<Maruku:0x10c5b9c ...>, @children=["W3C"], @meta={:title=>"World Wide Web Consortium"}>, "."], @meta={}>, #<MDElement:0x10c2550 @node_type=:paragraph, @doc=#<Maruku:0x10c5b9c ...>, @children=["Operation ", #<MDElement:0x10c1998 @node_type=:abbreviation, @doc=#<Maruku:0x10c5b9c ...>, @children=["Tigra Genesis"], @meta={}>, " is going well."], @meta={}>], @doc=#<Maruku:0x10c5b9c ...>, @abbreviations={"HTML"=>"Hyper Text Markup Language", "W3C"=>"World Wide Web Consortium", "Tigra Genesis"=>nil}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>The <abbr title='Hyper Text Markup Language'>HTML</abbr
      > specification is maintained by the <abbr title='World Wide Web Consortium'>W3C</abbr
      >.</p
    ><p>Operation <abbr>Tigra Genesis</abbr
      > is going well.</p
  >
*** Output of to_latex ***
The HTML specification is maintained by the W3C.

Operation Tigra Genesis is going well.


*** Output of to_s ***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
*** Output of to_md ***
The HTML specification is maintained by the W3C.Operation Tigra Genesis is going well.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>The HTML specification is maintained by the W3C.</p>

<p>*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium</p>

<p>Operation Tigra Genesis is going well.</p>

<p>*[Tigra Genesis]:</p>

*** Output of Markdown.pl (parsed) ***
<p>The HTML specification is maintained by the W3C.</p
    ><p>*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium</p
    ><p>Operation Tigra Genesis is going well.</p
    ><p>*[Tigra Genesis]:</p
  >