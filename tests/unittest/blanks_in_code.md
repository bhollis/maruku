Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
This block is composed of three lines:

	one
	
	three

This block is composed of 5

	
	one
	
	
	four
	

This block is composed of 2

	 
	two



*** Output of inspect ***
#<Maruku:0x1098598 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x109684c @node_type=:paragraph, @doc=#<Maruku:0x1098598 ...>, @children=["This block is composed of three lines:"], @meta={}>, #<MDElement:0x1096770 @node_type=:code, @doc=#<Maruku:0x1098598 ...>, @children=[], @meta={:raw_code=>"one\n\nthree\n"}>, #<MDElement:0x1094880 @node_type=:paragraph, @doc=#<Maruku:0x1098598 ...>, @children=["This block is composed of 5"], @meta={}>, #<MDElement:0x10947e0 @node_type=:code, @doc=#<Maruku:0x1098598 ...>, @children=[], @meta={:raw_code=>"one\n\n\nfour\n\n"}>, #<MDElement:0x109292c @node_type=:paragraph, @doc=#<Maruku:0x1098598 ...>, @children=["This block is composed of 2"], @meta={}>, #<MDElement:0x1092864 @node_type=:code, @doc=#<Maruku:0x1098598 ...>, @children=[], @meta={:raw_code=>"two"}>], @doc=#<Maruku:0x1098598 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>This block is composed of three lines:</p
    ><pre
      ><code>one

three
</code
    ></pre
    ><p>This block is composed of 5</p
    ><pre
      ><code>one


four

</code
    ></pre
    ><p>This block is composed of 2</p
    ><pre
      ><code>two</code
    ></pre
  >
*** Output of to_latex ***
This block is composed of three lines:

\begin{verbatim}one

three
\end{verbatim}
This block is composed of 5

\begin{verbatim}one


four

\end{verbatim}
This block is composed of 2

\begin{verbatim}two\end{verbatim}

*** Output of to_s ***
This block is composed of three lines:This block is composed of 5This block is composed of 2
*** Output of to_md ***
This block is composed of three lines:This block is composed of 5This block is composed of 2
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This block is composed of three lines:</p>

<pre><code>one

three
</code></pre>

<p>This block is composed of 5</p>

<pre><code>one


four
</code></pre>

<p>This block is composed of 2</p>

<pre><code>two
</code></pre>

*** Output of Markdown.pl (parsed) ***
<p>This block is composed of three lines:</p
    ><pre
      ><code>one

three
</code
    ></pre
    ><p>This block is composed of 5</p
    ><pre
      ><code>one


four
</code
    ></pre
    ><p>This block is composed of 2</p
    ><pre
      ><code>two
</code
    ></pre
  >