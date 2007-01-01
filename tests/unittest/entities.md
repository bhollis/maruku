Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Maruku translates HTML entities to the equivalent in LaTeX:

Entity      | Result
------------|----------
`&copy;`    |  &copy;
`&pound;`   |  &pound;
`a&nbsp;b`  |  a&nbsp;b
`&lambda;`  |  &lambda;
`&mdash;`   |  &mdash;


Entity-substitution does not happen in code blocks or inline code.

The following should not be translated:

	&copy;

It should read just like this: `&copy;`.


*** Output of inspect ***
#<Maruku:0x1101624 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10feb90 @node_type=:paragraph, @doc=#<Maruku:0x1101624 ...>, @children=["Maruku translates HTML entities to the equivalent in LaTeX:"], @meta={}>, #<MDElement:0x10e5ca8 @node_type=:table, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10fc764 @node_type=:head_cell, @doc=#<Maruku:0x1101624 ...>, @children=["Entity"], @meta={}>, #<MDElement:0x10f9c94 @node_type=:head_cell, @doc=#<Maruku:0x1101624 ...>, @children=["Result"], @meta={}>, #<MDElement:0x10f79e4 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10f88e4 @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&copy;"}>], @meta={}>, #<MDElement:0x10f5590 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10f5af4 @node_type=:entity, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:entity_name=>"copy"}>], @meta={}>, #<MDElement:0x10f34fc @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10f453c @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&pound;"}>], @meta={}>, #<MDElement:0x10f1350 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10f1f44 @node_type=:entity, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:entity_name=>"pound"}>], @meta={}>, #<MDElement:0x10ef5dc @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10f04f0 @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"a&nbsp;b"}>], @meta={}>, #<MDElement:0x10ed7a0 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=["a", #<MDElement:0x10edea8 @node_type=:entity, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:entity_name=>"nbsp"}>, "b"], @meta={}>, #<MDElement:0x10eb928 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10ec990 @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&lambda;"}>], @meta={}>, #<MDElement:0x10e9b50 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10ea0b4 @node_type=:entity, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:entity_name=>"lambda"}>], @meta={}>, #<MDElement:0x10e7e90 @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10e8cf0 @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&mdash;"}>], @meta={}>, #<MDElement:0x10e5d0c @node_type=:cell, @doc=#<Maruku:0x1101624 ...>, @children=[#<MDElement:0x10e648c @node_type=:entity, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:entity_name=>"mdash"}>], @meta={}>], @meta={:align=>[:left, :left]}>, #<MDElement:0x10e369c @node_type=:paragraph, @doc=#<Maruku:0x1101624 ...>, @children=["Entity-substitution does not happen in code blocks or inline code."], @meta={}>, #<MDElement:0x10dffd8 @node_type=:paragraph, @doc=#<Maruku:0x1101624 ...>, @children=["The following should not be translated:"], @meta={}>, #<MDElement:0x10dfefc @node_type=:code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&copy;\n"}>, #<MDElement:0x10dddf0 @node_type=:paragraph, @doc=#<Maruku:0x1101624 ...>, @children=["It should read just like this: ", #<MDElement:0x10defac @node_type=:inline_code, @doc=#<Maruku:0x1101624 ...>, @children=[], @meta={:raw_code=>"&copy;"}>, "."], @meta={}>], @doc=#<Maruku:0x1101624 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p
    ><table
      ><thead
        ><tr
          ><th>Entity</th
          ><th>Result</th
        ></tr
      ></thead
      ><tbody
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;copy;</code
          ></td
          ><td style='text-align: left;'>&copy;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;pound;</code
          ></td
          ><td style='text-align: left;'>&pound;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>a&amp;nbsp;b</code
          ></td
          ><td style='text-align: left;'>a&nbsp;b</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;lambda;</code
          ></td
          ><td style='text-align: left;'>&lambda;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;mdash;</code
          ></td
          ><td style='text-align: left;'>&mdash;</td
        ></tr
      ></tbody
    ></table
    ><p>Entity-substitution does not happen in code blocks or inline code.</p
    ><p>The following should not be translated:</p
    ><pre
      ><code>&amp;copy;
</code
    ></pre
    ><p>It should read just like this: <code>&amp;copy;</code
      >.</p
  >
*** Output of to_latex ***
Maruku translates HTML entities to the equivalent in \LaTeX\xspace :

\begin{tabular}{l|l}
Entity&Result\\
\hline 
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}&\copyright\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char112\char111\char117\char110\char100\char59}&\pounds\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char97\char38\char110\char98\char115\char112\char59\char98}&a~b\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char108\char97\char109\char98\char100\char97\char59}&$\lambda$\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char109\char100\char97\char115\char104\char59}&---\\
\end{tabular}

Entity-substitution does not happen in code blocks or inline code.

The following should not be translated:

\begin{verbatim}&copy;
\end{verbatim}
It should read just like this: \colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}.


*** Output of to_s ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** Output of to_md ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p>

<p>Entity      | Result
------------|----------
<code>&amp;copy;</code>    |  &copy;
<code>&amp;pound;</code>   |  &pound;
<code>a&amp;nbsp;b</code>  |  a&nbsp;b
<code>&amp;lambda;</code>  |  &lambda;
<code>&amp;mdash;</code>   |  &mdash;</p>

<p>Entity-substitution does not happen in code blocks or inline code.</p>

<p>The following should not be translated:</p>

<pre><code>&amp;copy;
</code></pre>

<p>It should read just like this: <code>&amp;copy;</code>.</p>

*** Output of Markdown.pl (parsed) ***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p
    ><p>Entity | Result
------------|----------
<code>&amp;copy;</code
      > | &copy;
<code>&amp;pound;</code
      > | &pound;
<code>a&amp;nbsp;b</code
      > | a&nbsp;b
<code>&amp;lambda;</code
      > | &lambda;
<code>&amp;mdash;</code
      > | &mdash;</p
    ><p>Entity-substitution does not happen in code blocks or inline code.</p
    ><p>The following should not be translated:</p
    ><pre
      ><code>&amp;copy;
</code
    ></pre
    ><p>It should read just like this: <code>&amp;copy;</code
      >.</p
  >