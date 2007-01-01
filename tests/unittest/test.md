Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

           $ python       



*** Output of inspect ***
md_el(:document,[	md_el(:code,[], {:raw_code=>"       $ python       "})])
*** Output of to_html ***
<pre
      ><code>       $ python       </code
    ></pre
  >
*** Output of to_latex ***
\begin{verbatim}       $ python       \end{verbatim}

*** Output of to_s ***

*** Output of to_md ***

*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[	md_el(:code,[], {:raw_code=>"       $ python       "})])
*** Output of to_html ***
<pre
      ><code>       $ python       </code
    ></pre
  >
*** Output of to_latex ***
\begin{verbatim}       $ python       \end{verbatim}

*** Output of to_s ***

*** Output of to_md ***

*** Output of Markdown.pl ***
<p>$ python       </p>

*** Output of Markdown.pl (parsed) ***
<p>$ python </p
  >