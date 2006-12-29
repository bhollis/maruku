> ## This is a header.
> 
> 1.   This is the first list item.
> 2.   This is the second list item.
> 
> Here's some example code:
> 
>     return shell_exec("echo $input | $markdown_script");
***EOF***
<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
      ></pre
    ></blockquote
  >
***EOF***
\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");\end{verbatim}

\end{quote}

***EOF***
This is a header.This is the first list item.This is the second list item.Here's some example code:
***EOF***
This is a header.This is the first list item.This is the second list item.Here's some example code:
***EOF***
MDElement.new(:document,[	
	MDElement.new(:quote,[	
		MDElement.new(:header,[	
			"This is a header."],
			{:id=>"this_is_a_header", :level=>2}),
		
		MDElement.new(:ol,[	
			MDElement.new(:li_span,[	
				"This is the first list item."],
				{:want_my_paragraph=>false}),
			
			MDElement.new(:li_span,[	
				"This is the second list item."],
				{:want_my_paragraph=>false})],
			{}),
		
		MDElement.new(:paragraph,[	
			"Here's some example code:"],
			{}),
		
		MDElement.new(:code,[],
			{:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");"})],
		{})],
	{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
      ></pre
    ></blockquote
  >
***EOF***
\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");\end{verbatim}

\end{quote}

***EOF***
This is a header.This is the first list item.This is the second list item.Here's some example code:
***EOF***
This is a header.This is the first list item.This is the second list item.Here's some example code:
***EOF***
MDElement.new(:document,[	
	MDElement.new(:quote,[	
		MDElement.new(:header,[	
			"This is a header."],
			{:id=>"this_is_a_header", :level=>2}),
		
		MDElement.new(:ol,[	
			MDElement.new(:li_span,[	
				"This is the first list item."],
				{:want_my_paragraph=>false}),
			
			MDElement.new(:li_span,[	
				"This is the second list item."],
				{:want_my_paragraph=>false})],
			{}),
		
		MDElement.new(:paragraph,[	
			"Here's some example code:"],
			{}),
		
		MDElement.new(:code,[],
			{:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");"})],
		{})],
	{})
***EOF***
<blockquote>
  <h2>This is a header.</h2>
  
  <ol>
  <li>This is the first list item.</li>
  <li>This is the second list item.</li>
  </ol>
  
  <p>Here's some example code:</p>

<pre><code>return shell_exec("echo $input | $markdown_script");
</code></pre>
</blockquote>

***EOF***
<blockquote>
 <h2>This is a header.</h2
      >
 
 <ol>
 <li>This is the first list item.</li
        >
 <li>This is the second list item.</li
        >
 </ol
      >
 
 <p>Here's some example code:</p
      >
<pre
        ><code>return shell_exec("echo $input | $markdown_script");
</code
      ></pre
      >
</blockquote
  >