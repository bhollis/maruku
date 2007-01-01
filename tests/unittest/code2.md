Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
> Code
>
>     Ciao
*** Output of inspect ***
#<Maruku:0x106295c @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x10624e8 @node_type=:quote, @doc=#<Maruku:0x106295c ...>, @children=[#<MDElement:0x1060b70 @node_type=:paragraph, @doc=#<Maruku:0x106295c ...>, @children=["Code"], @meta={}>, #<MDElement:0x1060a30 @node_type=:code, @doc=#<Maruku:0x106295c ...>, @children=[], @meta={:raw_code=>"Ciao"}>], @meta={}>], @doc=#<Maruku:0x106295c ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<blockquote
      ><p>Code</p
      ><pre
        ><code>Ciao</code
      ></pre
    ></blockquote
  >
*** Output of to_latex ***
\begin{quote}%
Code

\begin{verbatim}Ciao\end{verbatim}

\end{quote}

*** Output of to_s ***
Code
*** Output of to_md ***
Code
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<blockquote>
  <p>Code</p>

<pre><code>Ciao
</code></pre>
</blockquote>

*** Output of Markdown.pl (parsed) ***
<blockquote>
 <p>Code</p
      >
<pre
        ><code>Ciao
</code
      ></pre
      >
</blockquote
  >