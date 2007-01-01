Write a comment abouth the test here.
*** Markdown input: ***
This block is composed of three lines:

	one
	
	three

This block is composed of 5

	
	one
	
	
	four
	

This block is composed of 2

	 
	two



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
      ><code>two

</code
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

*** Output of to_s ***
This block is composed of three lines:This block is composed of 5
*** Output of to_s ***
This block is composed of three lines:This block is composed of 5
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This block is composed of three lines:"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"one\n\nthree\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 5"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"one\n\n\nfour\n\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 2"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"two\n\n"})
], {})
*** EOF ***




Failed tests:   [:to_html, :to_latex, :to_s, :to_s, :inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
-----| WARNING | -----
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
-----| WARNING | -----
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
-----| WARNING | -----
-----| WARNING | -----
This block is composed of three lines:This block is composed of 5This block is composed of 2
*** Output of to_s ***
-----| WARNING | -----
-----| WARNING | -----
This block is composed of three lines:This block is composed of 5This block is composed of 2
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:paragraph,[	"This block is composed of three lines:"]),
	md_el(:code,[], {:raw_code=>"one\n\nthree\n"}),
	md_el(:paragraph,[	"This block is composed of 5"]),
	md_el(:code,[], {:raw_code=>"one\n\n\nfour\n\n"}),
	md_el(:paragraph,[	"This block is composed of 2"]),
	md_el(:code,[], {:raw_code=>"two"})
])
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