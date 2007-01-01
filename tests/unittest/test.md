Write a comment abouth the test here.
*** Markdown input: ***

           $ python       



*** Output of to_html ***
<pre
      ><code>       $ python       

</code
    ></pre
  >
*** Output of to_latex ***
\begin{verbatim}       $ python       

\end{verbatim}

*** Output of to_s ***

*** Output of to_s ***

*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:code,[],{:raw_code=>"       $ python       \n\n"})
], {})
*** EOF ***




Failed tests:   [:to_html, :to_latex, :inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
-----| WARNING | -----
<pre
      ><code>       $ python       </code
    ></pre
  >
*** Output of to_latex ***
-----| WARNING | -----
\begin{verbatim}       $ python       \end{verbatim}

*** Output of to_s ***

*** Output of to_s ***

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[	md_el(:code,[], {:raw_code=>"       $ python       "})])
*** Output of Markdown.pl ***
<p>$ python       </p>

*** Output of Markdown.pl (parsed) ***
<p>$ python </p
  >