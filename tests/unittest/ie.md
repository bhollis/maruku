We must make sure that amps, quotes and apos are always written
numerically.
*** Parameters: ***
{} # params 
*** Markdown input: ***
`here's an apostrophe & a quote "`

	here's an apostrophe & a quote "
{:}

	here's an apostrophe & a quote "
{:html_use_syntax=true lang=boh}

	here's an apostrophe & a quote "
{:html_use_syntax=true lang=xml}

*** Output of inspect ***
md_el(:document,[
	md_par([md_code("here's an apostrophe & a quote \"")]),
	md_el(:code,[],{:raw_code=>"here's an apostrophe & a quote \""},[]),
	md_el(:code,[],{:raw_code=>"here's an apostrophe & a quote \""},[["html_use_syntax", "true"], ["lang", "boh"]]),
	md_el(:code,[],{:raw_code=>"here's an apostrophe & a quote \""},[["html_use_syntax", "true"], ["lang", "xml"]])
],{},[])
*** Output of to_html ***

<p><code>here&apos;s an apostrophe &amp; a quote &quot;</code></p>
<pre><code>here&#39;s an apostrophe &amp; a quote &quot;</code></pre><pre class='boh'>here's an apostrophe &amp; a quote &quot;</pre><pre class='xml'>here's an apostrophe &amp; a quote &quot;</pre>
*** Output of to_latex ***
\colorbox[rgb]{1.00,0.93,1.00}{\tt here\char39s~an~apostrophe~\char38~a~quote~\char34}

\begin{verbatim}here's an apostrophe & a quote "\end{verbatim}
\begin{verbatim}here's an apostrophe & a quote "\end{verbatim}
\begin{verbatim}here's an apostrophe & a quote "\end{verbatim}

*** Output of to_md ***



*** Output of to_s ***

*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p><code>here's an apostrophe &amp; a quote "</code></p>

<pre><code>here's an apostrophe &amp; a quote "
</code></pre>

<p>{:}</p>

<pre><code>here's an apostrophe &amp; a quote "
</code></pre>

<p>{:html<em>use</em>syntax=true lang=boh}</p>

<pre><code>here's an apostrophe &amp; a quote "
</code></pre>

<p>{:html<em>use</em>syntax=true lang=xml}</p>

*** Output of Markdown.pl (parsed) ***
<p
     ><code>here's an apostrophe &amp; a quote "</code
   ></p
   ><pre
     ><code>here's an apostrophe &amp; a quote "
</code
   ></pre
   ><p>{:}</p
   ><pre
     ><code>here's an apostrophe &amp; a quote "
</code
   ></pre
   ><p>{:html<em>use</em
     >syntax=true lang=boh}</p
   ><pre
     ><code>here's an apostrophe &amp; a quote "
</code
   ></pre
   ><p>{:html<em>use</em
     >syntax=true lang=xml}</p
 >