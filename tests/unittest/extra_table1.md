Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
CSS: style.css

First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell

*** Output of inspect ***
#<Maruku:0x10872ac @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x107e364 @node_type=:table, @doc=#<Maruku:0x10872ac ...>, @children=[#<MDElement:0x1085614 @node_type=:head_cell, @doc=#<Maruku:0x10872ac ...>, @children=["First Header"], @meta={}>, #<MDElement:0x1083ff8 @node_type=:head_cell, @doc=#<Maruku:0x10872ac ...>, @children=["Second Header"], @meta={}>, #<MDElement:0x1082734 @node_type=:cell, @doc=#<Maruku:0x10872ac ...>, @children=["Content Cell"], @meta={}>, #<MDElement:0x1081118 @node_type=:cell, @doc=#<Maruku:0x10872ac ...>, @children=["Content Cell"], @meta={}>, #<MDElement:0x107f9bc @node_type=:cell, @doc=#<Maruku:0x10872ac ...>, @children=["Content Cell"], @meta={}>, #<MDElement:0x107e3a0 @node_type=:cell, @doc=#<Maruku:0x10872ac ...>, @children=["Content Cell"], @meta={}>], @meta={:align=>[:left, :left]}>], @doc=#<Maruku:0x10872ac ...>, @abbreviations={}, @stack=[], @meta={:css=>"style.css"}, @footnotes={}>
*** Output of to_html ***
<table
      ><thead
        ><tr
          ><th>First Header</th
          ><th>Second Header</th
        ></tr
      ></thead
      ><tbody
        ><tr
          ><td style='text-align: left;'>Content Cell</td
          ><td style='text-align: left;'>Content Cell</td
        ></tr
        ><tr
          ><td style='text-align: left;'>Content Cell</td
          ><td style='text-align: left;'>Content Cell</td
        ></tr
      ></tbody
    ></table
  >
*** Output of to_latex ***
\begin{tabular}{l|l}
First Header&Second Header\\
\hline 
Content Cell&Content Cell\\
Content Cell&Content Cell\\
\end{tabular}


*** Output of to_s ***
First HeaderSecond HeaderContent CellContent CellContent CellContent Cell
*** Output of to_md ***
First HeaderSecond HeaderContent CellContent CellContent CellContent Cell
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>CSS: style.css</p>

<p>First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell</p>

*** Output of Markdown.pl (parsed) ***
<p>CSS: style.css</p
    ><p>First Header | Second Header
------------- | -------------
Content Cell | Content Cell
Content Cell | Content Cell</p
  >