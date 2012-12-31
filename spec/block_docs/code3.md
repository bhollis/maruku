Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

This is code (4 spaces):

    Code
This is code
    
    Code

This is code (1 tab):

	Code
This is code

	Code



*** Output of inspect ***
md_el(:document,[
	md_par(["This is code (4 spaces):"]),
	md_el(:code,[],{:raw_code=>"Code"},[]),
	md_par(["This is code"]),
	md_el(:code,[],{:raw_code=>"Code"},[]),
	md_par(["This is code (1 tab):"]),
	md_el(:code,[],{:raw_code=>"Code"},[]),
	md_par(["This is code"]),
	md_el(:code,[],{:raw_code=>"Code"},[])
],{},[])
*** Output of to_html ***
<p>This is code (4 spaces):</p>

<pre><code>Code</code></pre>

<p>This is code</p>

<pre><code>Code</code></pre>

<p>This is code (1 tab):</p>

<pre><code>Code</code></pre>

<p>This is code</p>

<pre><code>Code</code></pre>
*** Output of to_latex ***
This is code (4 spaces):

\begin{verbatim}Code\end{verbatim}
This is code

\begin{verbatim}Code\end{verbatim}
This is code (1 tab):

\begin{verbatim}Code\end{verbatim}
This is code

\begin{verbatim}Code\end{verbatim}
*** Output of to_md ***
This is code (4 spaces):

     Code

This is code

     Code

This is code (1 tab):

     Code

This is code

     Code
*** Output of to_s ***
This is code (4 spaces):This is codeThis is code (1 tab):This is code
