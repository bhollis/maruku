Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph 1

Paragraph 2


Paragraph 3
Paragraph 4
Paragraph Br->  
Paragraph 5



Escaping: & { } [ ] ! 

*** Output of inspect ***
#<Maruku:0x1050108 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x104e380 @node_type=:paragraph, @doc=#<Maruku:0x1050108 ...>, @children=["Paragraph 1"], @meta={}>, #<MDElement:0x104c9b8 @node_type=:paragraph, @doc=#<Maruku:0x1050108 ...>, @children=["Paragraph 2"], @meta={}>, #<MDElement:0x10492e0 @node_type=:paragraph, @doc=#<Maruku:0x1050108 ...>, @children=["Paragraph 3 Paragraph 4 Paragraph Br->", #<MDElement:0x104be3c @node_type=:linebreak, @doc=#<Maruku:0x1050108 ...>, @children=[], @meta={}>, "Paragraph 5"], @meta={}>, #<MDElement:0x1047904 @node_type=:paragraph, @doc=#<Maruku:0x1050108 ...>, @children=["Escaping: & { } [ ] !"], @meta={}>], @doc=#<Maruku:0x1050108 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br
      />Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] !</p
  >
*** Output of to_latex ***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \} [ ] !


*** Output of to_s ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** Output of to_md ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Paragraph 1</p>

<p>Paragraph 2</p>

<p>Paragraph 3
Paragraph 4
Paragraph Br-> <br />
Paragraph 5</p>

<p>Escaping: &amp; { } [ ] ! </p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3
Paragraph 4
Paragraph Br-> <br
      />
Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] ! </p
  >