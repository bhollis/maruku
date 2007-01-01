Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

This is code (4 spaces):

    Code
This is not code
    
    Code

This is code (1 tab):

	Code
This is not code

	Code



*** Output of inspect ***
#<Maruku:0x10549c4 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x1052b10 @node_type=:paragraph, @doc=#<Maruku:0x10549c4 ...>, @children=["This is code (4 spaces):"], @meta={}>, #<MDElement:0x10529d0 @node_type=:code, @doc=#<Maruku:0x10549c4 ...>, @children=[], @meta={:raw_code=>"Code"}>, #<MDElement:0x104fc1c @node_type=:paragraph, @doc=#<Maruku:0x10549c4 ...>, @children=["This is not code ", #<MDElement:0x1051d14 @node_type=:linebreak, @doc=#<Maruku:0x10549c4 ...>, @children=[], @meta={}>, "Code"], @meta={}>, #<MDElement:0x104e254 @node_type=:paragraph, @doc=#<Maruku:0x10549c4 ...>, @children=["This is code (1 tab):"], @meta={}>, #<MDElement:0x104e178 @node_type=:code, @doc=#<Maruku:0x10549c4 ...>, @children=[], @meta={:raw_code=>"Code"}>, #<MDElement:0x104c710 @node_type=:paragraph, @doc=#<Maruku:0x10549c4 ...>, @children=["This is not code"], @meta={}>, #<MDElement:0x104c634 @node_type=:code, @doc=#<Maruku:0x10549c4 ...>, @children=[], @meta={:raw_code=>"Code"}>], @doc=#<Maruku:0x10549c4 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
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
      ><code>Code</code
    ></pre
  >
*** Output of to_latex ***
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is not code \linebreak Code

This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is not code

\begin{verbatim}Code\end{verbatim}

*** Output of to_s ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** Output of to_md ***
This is code (4 spaces):This is not code CodeThis is code (1 tab):This is not code
*** EOF ***



	OK!



*** Output of Markdown.pl ***
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

*** Output of Markdown.pl (parsed) ***
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