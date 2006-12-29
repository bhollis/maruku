This is ruby code:

	require 'maruku'
	
	puts Maruku.new($stdin).to_html

This is ruby code:

@ lang: ruby; html_use_syntax

	require 'maruku'
	
	puts Maruku.new($stdin).to_html
***EOF***
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
***EOF***
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html
\end{verbatim}
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html\end{verbatim}

***EOF***
This is ruby code:This is ruby code:
***EOF***
This is ruby code:This is ruby code:
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is ruby code:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html\n"}),
	
	MDElement.new(:paragraph,[	
		"This is ruby code:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html", :lang=>"ruby", :html_use_syntax=>true})],
	{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
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
***EOF***
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html
\end{verbatim}
This is ruby code:

\begin{verbatim}require 'maruku'

puts Maruku.new($stdin).to_html\end{verbatim}

***EOF***
This is ruby code:This is ruby code:
***EOF***
This is ruby code:This is ruby code:
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is ruby code:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html\n"}),
	
	MDElement.new(:paragraph,[	
		"This is ruby code:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"require 'maruku'\n\nputs Maruku.new($stdin).to_html", :lang=>"ruby", :html_use_syntax=>true})],
	{})
***EOF***
<p>This is ruby code:</p>

<pre><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code></pre>

<p>This is ruby code:</p>

<p>@ lang: ruby; html<em>use</em>syntax</p>

<pre><code>require 'maruku'

puts Maruku.new($stdin).to_html
</code></pre>

***EOF***
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