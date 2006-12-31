Maruku translates HTML entities to the equivalent in LaTeX:

Entity      | Result
------------|----------
`&copy;`    |  &copy;
`&pound;`   |  &pound;
`a&nbsp;b`  |  a&nbsp;b
`&lambda;`  |  &lambda;
`&mdash;`   |  &mdash;


Entity-substitution does not happen in code blocks or inline code.

The following should not be translated:

	&copy;

It should read just like this: `&copy;`.


***EOF***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p
    ><table
      ><thead
        ><tr
          ><th>Entity</th
          ><th>Result</th
        ></tr
      ></thead
      ><tbody
        ><tr
          ><td style='text-align: left;'
            ><tt>&amp;copy;</tt
          ></td
          ><td style='text-align: left;'>&copy;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><tt>&amp;pound;</tt
          ></td
          ><td style='text-align: left;'>&pound;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><tt>a&amp;nbsp;b</tt
          ></td
          ><td style='text-align: left;'>a&nbsp;b</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><tt>&amp;lambda;</tt
          ></td
          ><td style='text-align: left;'>&lambda;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><tt>&amp;mdash;</tt
          ></td
          ><td style='text-align: left;'>&mdash;</td
        ></tr
      ></tbody
    ></table
    ><p>Entity-substitution does not happen in code blocks or inline code.</p
    ><p>The following should not be translated:</p
    ><pre
      ><code>&amp;copy;
</code
    ></pre
    ><p>It should read just like this: <tt>&amp;copy;</tt
      >.</p
  >
***EOF***
Maruku translates HTML entities to the equivalent in \LaTeX\xspace :

\begin{tabular}{l|l}
Entity&Result\\
\hline 
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}&\copyright\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char112\char111\char117\char110\char100\char59}&\pounds\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char97\char38\char110\char98\char115\char112\char59\char98}&a~b\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char108\char97\char109\char98\char100\char97\char59}&$\lambda$\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char109\char100\char97\char115\char104\char59}&---\\
\end{tabular}

Entity-substitution does not happen in code blocks or inline code.

The following should not be translated:

\begin{verbatim}&copy;
\end{verbatim}
It should read just like this: \colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}.


***EOF***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
***EOF***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Maruku translates HTML entities to the equivalent in LaTeX:"
	], {}),
	
	MDElement.new(:table,[	
		MDElement.new(:head_cell,[	
			"Entity"
		], {}),
		
		MDElement.new(:head_cell,[	
			"Result"
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&copy;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"copy"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&pound;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"pound"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"a&nbsp;b"})
		], {}),
		
		MDElement.new(:cell,[	
			"a",
			
			MDElement.new(:entity,[],{:entity_name=>"nbsp"}),
			
			"b"
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&lambda;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"lambda"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&mdash;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"mdash"})
		], {})
	], {:align=>[:left, :left]}),
	
	MDElement.new(:paragraph,[	
		"Entity-substitution does not happen in code blocks or inline code."
	], {}),
	
	MDElement.new(:paragraph,[	
		"The following should not be translated:"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"&copy;\n"}),
	
	MDElement.new(:paragraph,[	
		"It should read just like this: ",
		
		MDElement.new(:inline_code,[],{:raw_code=>"&copy;"}),
		
		"."
	], {})
], {})
***EOF***

Failed tests:   [:to_html] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
-----| WARNING | -----
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p
    ><table
      ><thead
        ><tr
          ><th>Entity</th
          ><th>Result</th
        ></tr
      ></thead
      ><tbody
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;copy;</code
          ></td
          ><td style='text-align: left;'>&copy;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;pound;</code
          ></td
          ><td style='text-align: left;'>&pound;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>a&amp;nbsp;b</code
          ></td
          ><td style='text-align: left;'>a&nbsp;b</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;lambda;</code
          ></td
          ><td style='text-align: left;'>&lambda;</td
        ></tr
        ><tr
          ><td style='text-align: left;'
            ><code>&amp;mdash;</code
          ></td
          ><td style='text-align: left;'>&mdash;</td
        ></tr
      ></tbody
    ></table
    ><p>Entity-substitution does not happen in code blocks or inline code.</p
    ><p>The following should not be translated:</p
    ><pre
      ><code>&amp;copy;
</code
    ></pre
    ><p>It should read just like this: <code>&amp;copy;</code
      >.</p
  >
***EOF***
Maruku translates HTML entities to the equivalent in \LaTeX\xspace :

\begin{tabular}{l|l}
Entity&Result\\
\hline 
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}&\copyright\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char112\char111\char117\char110\char100\char59}&\pounds\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char97\char38\char110\char98\char115\char112\char59\char98}&a~b\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char108\char97\char109\char98\char100\char97\char59}&$\lambda$\\
\colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char109\char100\char97\char115\char104\char59}&---\\
\end{tabular}

Entity-substitution does not happen in code blocks or inline code.

The following should not be translated:

\begin{verbatim}&copy;
\end{verbatim}
It should read just like this: \colorbox[rgb]{0.94,0.94,0.88}{\tt \char38\char99\char111\char112\char121\char59}.


***EOF***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
***EOF***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Maruku translates HTML entities to the equivalent in LaTeX:"
	], {}),
	
	MDElement.new(:table,[	
		MDElement.new(:head_cell,[	
			"Entity"
		], {}),
		
		MDElement.new(:head_cell,[	
			"Result"
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&copy;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"copy"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&pound;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"pound"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"a&nbsp;b"})
		], {}),
		
		MDElement.new(:cell,[	
			"a",
			
			MDElement.new(:entity,[],{:entity_name=>"nbsp"}),
			
			"b"
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&lambda;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"lambda"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:inline_code,[],{:raw_code=>"&mdash;"})
		], {}),
		
		MDElement.new(:cell,[	
			MDElement.new(:entity,[],{:entity_name=>"mdash"})
		], {})
	], {:align=>[:left, :left]}),
	
	MDElement.new(:paragraph,[	
		"Entity-substitution does not happen in code blocks or inline code."
	], {}),
	
	MDElement.new(:paragraph,[	
		"The following should not be translated:"
	], {}),
	
	MDElement.new(:code,[],{:raw_code=>"&copy;\n"}),
	
	MDElement.new(:paragraph,[	
		"It should read just like this: ",
		
		MDElement.new(:inline_code,[],{:raw_code=>"&copy;"}),
		
		"."
	], {})
], {})
***EOF***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p>

<p>Entity      | Result
------------|----------
<code>&amp;copy;</code>    |  &copy;
<code>&amp;pound;</code>   |  &pound;
<code>a&amp;nbsp;b</code>  |  a&nbsp;b
<code>&amp;lambda;</code>  |  &lambda;
<code>&amp;mdash;</code>   |  &mdash;</p>

<p>Entity-substitution does not happen in code blocks or inline code.</p>

<p>The following should not be translated:</p>

<pre><code>&amp;copy;
</code></pre>

<p>It should read just like this: <code>&amp;copy;</code>.</p>

***EOF***
<p>Maruku translates HTML entities to the equivalent in LaTeX:</p
    ><p>Entity | Result
------------|----------
<code>&amp;copy;</code
      > | &copy;
<code>&amp;pound;</code
      > | &pound;
<code>a&amp;nbsp;b</code
      > | a&nbsp;b
<code>&amp;lambda;</code
      > | &lambda;
<code>&amp;mdash;</code
      > | &mdash;</p
    ><p>Entity-substitution does not happen in code blocks or inline code.</p
    ><p>The following should not be translated:</p
    ><pre
      ><code>&amp;copy;
</code
    ></pre
    ><p>It should read just like this: <code>&amp;copy;</code
      >.</p
  >