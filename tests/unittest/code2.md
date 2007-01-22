Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
> Code
>
>     Ciao
*** Output of inspect ***
md_el(:document,[
	md_el(:quote,[md_par(["Code"]), md_el(:code,[],{:raw_code=>"Ciao"},[])],{},[])
],{},[])
*** Output of to_html ***

<blockquote>
<p>Code</p>
<pre><code>Ciao</code></pre></blockquote>

*** Output of to_latex ***
\begin{quote}%
Code

\begin{verbatim}Ciao\end{verbatim}

\end{quote}

*** Output of to_md ***
Code


*** Output of to_s ***
Code
*** EOF ***




Failed tests:   [:to_html] 

*** Output of inspect ***
md_el(:document,[
	md_el(:quote,[md_par(["Code"]), md_el(:code,[],{:raw_code=>"Ciao"},[])],{},[])
],{},[])
*** Output of to_html ***
-----| WARNING | -----
Interrupt
/sw/lib/ruby/1.8/rexml/document.rb:101:in `doctype'
/sw/lib/ruby/1.8/rexml/text.rb:139:in `to_s'
/sw/lib/ruby/1.8/rexml/text.rb:169:in `write'
/sw/lib/ruby/1.8/rexml/element.rb:667:in `write_children'
/sw/lib/ruby/1.8/rexml/element.rb:667:in `each'
/sw/lib/ruby/1.8/rexml/parent.rb:40:in `each'
/sw/lib/ruby/1.8/rexml/element.rb:667:in `write_children'
./lib/maruku/output/to_html.rb:65:in `to_html'
bin/marutest:82:in `run_test'
bin/marutest:79:in `each'
bin/marutest:79:in `run_test'
bin/marutest:252:in `marutest'
bin/marutest:250:in `each'
bin/marutest:250:in `marutest'
bin/marutest:320
*** Output of to_latex ***
\begin{quote}%
Code

\begin{verbatim}Ciao\end{verbatim}

\end{quote}

*** Output of to_md ***
Code


*** Output of to_s ***
Code
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