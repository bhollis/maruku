Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
CSS: style.css


Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

*** Output of inspect ***
#<Maruku:0x110925c @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x1103ce4 @node_type=:definition_list, @doc=#<Maruku:0x110925c ...>, @children=[#<MDElement:0x1103d34 @node_type=:definition, @doc=#<Maruku:0x110925c ...>, @children=[#<MDElement:0x1106bc4 @node_type=:definition_term, @doc=#<Maruku:0x110925c ...>, @children=["Apple"], @meta={}>, #<MDElement:0x1103dd4 @node_type=:definition_data, @doc=#<Maruku:0x110925c ...>, @children=["Pomaceous fruit of plants of the genus Malus in the family Rosaceae."], @meta={}>], @meta={:definitions=>[#<MDElement:0x1103dd4 @node_type=:definition_data, @doc=#<Maruku:0x110925c ...>, @children=["Pomaceous fruit of plants of the genus Malus in the family Rosaceae."], @meta={}>], :want_my_paragraph=>false, :terms=>[#<MDElement:0x1106bc4 @node_type=:definition_term, @doc=#<Maruku:0x110925c ...>, @children=["Apple"], @meta={}>]}>, #<MDElement:0x10ff39c @node_type=:definition, @doc=#<Maruku:0x110925c ...>, @children=[#<MDElement:0x11019a8 @node_type=:definition_term, @doc=#<Maruku:0x110925c ...>, @children=["Orange"], @meta={}>, #<MDElement:0x10ff3d8 @node_type=:definition_data, @doc=#<Maruku:0x110925c ...>, @children=["The fruit of an evergreen tree of the genus Citrus."], @meta={}>], @meta={:definitions=>[#<MDElement:0x10ff3d8 @node_type=:definition_data, @doc=#<Maruku:0x110925c ...>, @children=["The fruit of an evergreen tree of the genus Citrus."], @meta={}>], :want_my_paragraph=>false, :terms=>[#<MDElement:0x11019a8 @node_type=:definition_term, @doc=#<Maruku:0x110925c ...>, @children=["Orange"], @meta={}>]}>], @meta={}>], @doc=#<Maruku:0x110925c ...>, @abbreviations={}, @stack=[], @meta={:css=>"style.css"}, @footnotes={}>
*** Output of to_html ***
<dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
  >
*** Output of to_latex ***
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae. 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

*** Output of to_s ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.
*** Output of to_md ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>CSS: style.css</p>

<p>Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.</p>

<p>Orange
:   The fruit of an evergreen tree of the genus Citrus.</p>

*** Output of Markdown.pl (parsed) ***
<p>CSS: style.css</p
    ><p>Apple
: Pomaceous fruit of plants of the genus Malus in 
 the family Rosaceae.</p
    ><p>Orange
: The fruit of an evergreen tree of the genus Citrus.</p
  >