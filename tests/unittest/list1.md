*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.

***EOF***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
    ></ul
  >
***EOF***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}


\end{itemize}

***EOF***
A list item with a blockquote:This is a blockquote inside a list item.
***EOF***
A list item with a blockquote:This is a blockquote inside a list item.
***EOF***
MDElement.new(:document,[	
	MDElement.new(:ul,[	
		MDElement.new(:li,[	
			MDElement.new(:paragraph,[	
				"A list item with a blockquote:"],
				{}),
			
			MDElement.new(:quote,[	
				MDElement.new(:paragraph,[	
					"This is a blockquote inside a list item."],
					{})],
				{})],
			{:want_my_paragraph=>true})],
		{})],
	{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<ul
      ><li
        ><p>A list item with a blockquote:</p
        ><blockquote
          ><p>This is a blockquote inside a list item.</p
        ></blockquote
      ></li
    ></ul
  >
***EOF***
\begin{itemize}%
\item A list item with a blockquote:

\begin{quote}%
This is a blockquote inside a list item.


\end{quote}


\end{itemize}

***EOF***
A list item with a blockquote:This is a blockquote inside a list item.
***EOF***
A list item with a blockquote:This is a blockquote inside a list item.
***EOF***
MDElement.new(:document,[	
	MDElement.new(:ul,[	
		MDElement.new(:li,[	
			MDElement.new(:paragraph,[	
				"A list item with a blockquote:"],
				{}),
			
			MDElement.new(:quote,[	
				MDElement.new(:paragraph,[	
					"This is a blockquote inside a list item."],
					{})],
				{})],
			{:want_my_paragraph=>true})],
		{})],
	{})
***EOF***
<ul>
<li><p>A list item with a blockquote:</p>

<blockquote>
  <p>This is a blockquote
  inside a list item.</p>
</blockquote></li>
</ul>

***EOF***
<ul>
<li
        ><p>A list item with a blockquote:</p
        >
<blockquote>
 <p>This is a blockquote
 inside a list item.</p
          >
</blockquote
      ></li
      >
</ul
  >