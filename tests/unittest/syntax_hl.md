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
md_el(:document,[
	md_par(["This is ruby code:"]),
	 md_el(:code,[] , {:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html\n"}),
	 md_par(["This is ruby code:"]),
	 md_el(:code,[] , {:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html", :lang=>"ruby", :html_use_syntax=>true})
] )
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