
This is code (4 spaces):

    Code
This is not code
    
    Code

This is code (1 tab):

	Code
This is not code

	Code



***EOF***
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
***EOF***
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is not code \linebreak Code

This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is not code

\begin{verbatim}Code

\end{verbatim}

***EOF***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
***EOF***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is code (4 spaces):"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code ",
		
		MDElement.new(:linebreak,[],
			{}),
		
		"Code"],
		{}),
	
	MDElement.new(:paragraph,[	
		"This is code (1 tab):"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code\n\n"})],
	{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
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
***EOF***
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is not code \linebreak Code

This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is not code

\begin{verbatim}Code

\end{verbatim}

***EOF***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
***EOF***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"This is code (4 spaces):"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code ",
		
		MDElement.new(:linebreak,[],
			{}),
		
		"Code"],
		{}),
	
	MDElement.new(:paragraph,[	
		"This is code (1 tab):"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code"}),
	
	MDElement.new(:paragraph,[	
		"This is not code"],
		{}),
	
	MDElement.new(:code,[],
		{:raw_code=>"Code\n\n"})],
	{})
***EOF***
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

***EOF***
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