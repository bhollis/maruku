Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
This is ruby code:

	require 'maruku'
	
	puts Maruku.new($stdin).to_html

This is ruby code:

@ lang: ruby; html_use_syntax

	require 'maruku'
	
	puts Maruku.new($stdin).to_html
*** Output of inspect ***
#<Maruku:0x1123918 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x111ebd4 @node_type=:paragraph, @doc=#<Maruku:0x1123918 ...>, @children=["This is ruby code:"], @meta={}>, #<MDElement:0x111eae4 @node_type=:code, @doc=#<Maruku:0x1123918 ...>, @children=[], @meta={:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html\n"}>, #<MDElement:0x111b0d8 @node_type=:paragraph, @doc=#<Maruku:0x1123918 ...>, @children=["This is ruby code:"], @meta={}>, #<MDElement:0x1119c38 @node_type=:code, @doc=#<Maruku:0x1123918 ...>, @children=[], @meta={:lang=>"ruby", :raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html", :html_use_syntax=>true}>], @doc=#<Maruku:0x1123918 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>This is ruby code:</p
    ><pre
      ><code>require &apos;maruku&apos;

puts Maruku.new($stdin).to_html
</code
    ></pre
    ><p>This is ruby code:</p
    ><pre class='ruby'
      ><span class='ident'>require</span
      > <span class='punct'>'</span
      ><span class='string'>maruku</span
      ><span class='punct'>'</span
      >

<span class='ident'>puts</span
      > <span class='constant'>Maruku</span
      ><span class='punct'>.</span
      ><span class='ident'>new</span
      ><span class='punct'>(</span
      ><span class='global'>$stdin</span
      ><span class='punct'>).</span
      ><span class='ident'>to_html</span
    ></pre
  >
*** Output of to_latex ***
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html
\end{verbatim}
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html\end{verbatim}

*** Output of to_s ***
This is ruby code:This is ruby code:
*** Output of to_md ***
This is ruby code:This is ruby code:
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is ruby code:</p>

<pre><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code></pre>

<p>This is ruby code:</p>

<p>@ lang: ruby; html<em>use</em>syntax</p>

<pre><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code></pre>

*** Output of Markdown.pl (parsed) ***
<p>This is ruby code:</p
    ><pre
      ><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code
    ></pre
    ><p>This is ruby code:</p
    ><p>@ lang: ruby; html<em>use</em
      >syntax</p
    ><pre
      ><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code
    ></pre
  >