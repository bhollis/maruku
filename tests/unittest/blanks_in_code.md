This block is composed of three lines:

	one
	
	three

This block is composed of 5

	
	one
	
	
	four
	

This block is composed of 2

	 
	two



***EOF***
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
***EOF***
This block is composed of three lines:

\begin{verbatim}one

three
\end{verbatim}
This block is composed of 5

\begin{verbatim}one

four

\end{verbatim}

***EOF***
This block is composed of three lines:This block is composed of 5
***EOF***
This block is composed of three lines:This block is composed of 5
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This block is composed of three lines:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"one\n\nthree\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 5"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"one\n\n\nfour\n\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 2"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"two\n\n"})],
	{})
***EOF***

Failed tests:   [:to_latex, :to_s, :to_s] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
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
***EOF***
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

\begin{verbatim}two

\end{verbatim}

***EOF***
-----| WARNING | -----
-----| WARNING | -----
This block is composed of three lines:This block is composed of 5This block is composed of 2
***EOF***
-----| WARNING | -----
-----| WARNING | -----
This block is composed of three lines:This block is composed of 5This block is composed of 2
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This block is composed of three lines:"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"one\n\nthree\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 5"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"one\n\n\nfour\n\n"}),
	
	MDElement.new(:paragraph,[	
		"This block is composed of 2"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"two\n\n"})],
	{})
***EOF***
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

***EOF***
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