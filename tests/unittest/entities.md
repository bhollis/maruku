Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
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


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Maruku translates HTML entities to the equivalent in LaTeX:"]),
	md_el(:table,[
		md_el(:head_cell,[	"Entity"]),
		md_el(:head_cell,[	"Result"]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&copy;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"copy"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&pound;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"pound"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"a&nbsp;b"})]),
		md_el(:cell,[
			"a",
			md_el(:entity,[], {:entity_name=>"nbsp"}),
			"b"
		]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&lambda;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"lambda"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&mdash;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"mdash"})])
	], {:align=>[:left, :left]}),
	md_el(:paragraph,[	"Entity-substitution does not happen in code blocks or inline code."]),
	md_el(:paragraph,[	"The following should not be translated:"]),
	md_el(:code,[], {:raw_code=>"&copy;\n"}),
	md_el(:paragraph,[
		"It should read just like this: ",
		md_el(:inline_code,[], {:raw_code=>"&copy;"}),
		"."
	])
])
*** Output of to_html ***
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
*** Output of to_latex ***
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


*** Output of to_s ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** Output of to_md ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Maruku translates HTML entities to the equivalent in LaTeX:"]),
	md_el(:table,[
		md_el(:head_cell,[	"Entity"]),
		md_el(:head_cell,[	"Result"]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&copy;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"copy"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&pound;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"pound"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"a&nbsp;b"})]),
		md_el(:cell,[
			"a",
			md_el(:entity,[], {:entity_name=>"nbsp"}),
			"b"
		]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&lambda;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"lambda"})]),
		md_el(:cell,[	md_el(:inline_code,[], {:raw_code=>"&mdash;"})]),
		md_el(:cell,[	md_el(:entity,[], {:entity_name=>"mdash"})])
	], {:align=>[:left, :left]}),
	md_el(:paragraph,[	"Entity-substitution does not happen in code blocks or inline code."]),
	md_el(:paragraph,[	"The following should not be translated:"]),
	md_el(:code,[], {:raw_code=>"&copy;\n"}),
	md_el(:paragraph,[
		"It should read just like this: ",
		md_el(:inline_code,[], {:raw_code=>"&copy;"}),
		"."
	])
])
*** Output of to_html ***
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
*** Output of to_latex ***
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


*** Output of to_s ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** Output of to_md ***
Maruku translates HTML entities to the equivalent in LaTeX:EntityResultabEntity-substitution does not happen in code blocks or inline code.The following should not be translated:It should read just like this: .
*** Output of Markdown.pl ***
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

*** Output of Markdown.pl (parsed) ***
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