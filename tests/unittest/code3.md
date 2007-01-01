Write a comment abouth the test here.
*** Markdown input: ***

This is code (4 spaces):

    Code
This is not code
    
    Code

This is code (1 tab):

	Code
This is not code

	Code



*** Output of to_html ***
<p>This is code (4 spaces):</p
    ><pre
      ><code>Code</code
    ></pre
    ><p>This is not code <br
      />Code</p
    ><p>This is code (1 tab):</p
    ><pre
      ><code>Code</code
    ></pre
    ><p>This is not code</p
    ><pre
      ><code>Code

</code
    ></pre
  >
*** Output of to_latex ***
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is not code \linebreak Code

This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is not code

\begin{verbatim}Code

\end{verbatim}

*** Output of to_s ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** Output of to_s ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is code (4 spaces):"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code ",
		
		MDElement.new(:linebreak,[],{}),
		
		"Code"
	], {}),
	
	MDElement.new(:paragraph,[	
		"This is code (1 tab):"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"Code\n\n"})
], {})
*** EOF ***




Failed tests:   [:to_html, :to_latex, :inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
-----| WARNING | -----
<p>This is code (4 spaces):</p
    ><pre
      ><code>Code</code
    ></pre
    ><p>This is not code <br
      />Code</p
    ><p>This is code (1 tab):</p
    ><pre
      ><code>Code</code
    ></pre
    ><p>This is not code</p
    ><pre
      ><code>Code</code
    ></pre
  >
*** Output of to_latex ***
-----| WARNING | -----
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is not code \linebreak Code

This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is not code

\begin{verbatim}Code\end{verbatim}

*** Output of to_s ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** Output of to_s ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[	"This is code (4 spaces):"]),
	md_el(:code,[], {:raw_code=>"Code"}),
	md_el(:paragraph,[
		"This is not code ",
		md_el(:linebreak,[]),
		"Code"
	]),
	md_el(:paragraph,[	"This is code (1 tab):"]),
	md_el(:code,[], {:raw_code=>"Code"}),
	md_el(:paragraph,[	"This is not code"]),
	md_el(:code,[], {:raw_code=>"Code"})
])
*** Output of Markdown.pl ***
<p>This is code (4 spaces):</p>

<pre><code>Code
</code></pre>

<p>This is not code</p>

<pre><code>Code
</code></pre>

<p>This is code (1 tab):</p>

<pre><code>Code
</code></pre>

<p>This is not code</p>

<pre><code>Code
</code></pre>

*** Output of Markdown.pl (parsed) ***
<p>This is code (4 spaces):</p
    ><pre
      ><code>Code
</code
    ></pre
    ><p>This is not code</p
    ><pre
      ><code>Code
</code
    ></pre
    ><p>This is code (1 tab):</p
    ><pre
      ><code>Code
</code
    ></pre
    ><p>This is not code</p
    ><pre
      ><code>Code
</code
    ></pre
  >