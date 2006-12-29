*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

***EOF***
<ul
      ><li
        ><p>This is a list item with two paragraphs.</p
        ><p>This is the second paragraph in the list item. You&apos;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p
      ></li
    ></ul
  >
***EOF***
\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit



\end{itemize}

***EOF***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
***EOF***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
***EOF***
MDElement.new(:document,[	
	MDElement.new(:ul,[	
		MDElement.new(:li,[	
			MDElement.new(:paragraph,[	
				"This is a list item with two paragraphs."],
				{}),
			
			MDElement.new(:paragraph,[	
				"This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"],
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
        ><p>This is a list item with two paragraphs.</p
        ><p>This is the second paragraph in the list item. You&apos;re only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit</p
      ></li
    ></ul
  >
***EOF***
\begin{itemize}%
\item This is a list item with two paragraphs.

This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit



\end{itemize}

***EOF***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
***EOF***
This is a list item with two paragraphs.This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit
***EOF***
MDElement.new(:document,[	
	MDElement.new(:ul,[	
		MDElement.new(:li,[	
			MDElement.new(:paragraph,[	
				"This is a list item with two paragraphs."],
				{}),
			
			MDElement.new(:paragraph,[	
				"This is the second paragraph in the list item. You're only required to indent the first line. Lorem ipsum dolo sit amet, consectetuer adipiscing elit"],
				{})],
			{:want_my_paragraph=>true})],
		{})],
	{})
***EOF***
<ul>
<li><p>This is a list item with two paragraphs.</p>

<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p></li>
</ul>

***EOF***
<ul>
<li
        ><p>This is a list item with two paragraphs.</p
        >
<p>This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.</p
      ></li
      >
</ul
  >