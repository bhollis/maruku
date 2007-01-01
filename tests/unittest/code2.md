Write a comment abouth the test here.
*** Markdown input: ***
> ## This is a header.
> 
> 1.   This is the first list item.
> 2.   This is the second list item.
> 
> Here's some example code:
> 
>     return shell_exec("echo $input | $markdown_script");(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
      ></pre
    ></blockquote
  >(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");\end{verbatim}

\end{quote}
(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)MDElement.new(:document,[	
	MDElement.new(:quote,[	
		MDElement.new(:header,[	
			"This is a header."
		], {:id=>"this_is_a_header", :level=>2}),
		
		MDElement.new(:ol,[	
			MDElement.new(:li_span,[	
				"This is the first list item."
			], {:want_my_paragraph=>false}),
			
			MDElement.new(:li_span,[	
				"This is the second list item."
			], {:want_my_paragraph=>false})
		], {}),
		
		MDElement.new(:paragraph,[	
			"Here's some example code:"
		], {}),
		
		MDElement.new(:code,[],{:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");"})
	], {})
], {})(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)
Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:

(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
      ></pre
    ></blockquote
  >(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");\end{verbatim}

\end{quote}
(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)-----| WARNING | -----
md_el(:document,[	md_el(:quote,[
		md_el(:header,[	"This is a header."], {:id=>"this_is_a_header", :level=>2}),
		md_el(:ol,[
			md_el(:li_span,[	"This is the first list item."], {:want_my_paragraph=>false}),
			md_el(:li_span,[	"This is the second list item."], {:want_my_paragraph=>false})
		]),
		md_el(:paragraph,[	"Here's some example code:"]),
		md_el(:code,[], {:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");"})
	])])(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote>
  <h2>This is a header.</h2>
  
  <ol>
  <li>This is the first list item.</li>
  <li>This is the second list item.</li>
  </ol>
  
  <p>Here's some example code:</p>

<pre><code>return shell_exec("echo $input | $markdown_script");
</code></pre>
</blockquote>
(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote>
 <h2>This is a header.</h2
      >
 
 <ol>
 <li>This is the first list item.</li
        >
 <li>This is the second list item.</li
        >
 </ol
      >
 
 <p>Here's some example code:</p
      >
<pre
        ><code>return shell_exec("echo $input | $markdown_script");
</code
      ></pre
      >
</blockquote
  >
*** Output of to_html ***
<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)&lt;blockquote</code
      ></pre
    ></blockquote
    ><pre
      ><code>  &gt;&lt;h2 id=&apos;this_is_a_header&apos;&gt;This is a header.&lt;/h2
  &gt;&lt;ol
    &gt;&lt;li&gt;This is the first list item.&lt;/li
    &gt;&lt;li&gt;This is the second list item.&lt;/li
  &gt;&lt;/ol
  &gt;&lt;p&gt;Here&amp;apos;s some example code:&lt;/p
  &gt;&lt;pre
    &gt;&lt;code&gt;return shell_exec(&amp;quot;echo $input | $markdown_script&amp;quot;);&lt;/code
  &gt;&lt;/pre
&gt;&lt;/blockquote</code
    ></pre
    ><p>&gt;(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{this<em>is</em
      >a<em>header}{}\subsection*{{This is a header.}}\label{this</em
      >is<em>a</em
      >header}</p
    ><p>\begin{enumerate}% \item This is the first list item. \item This is the second list item.</p
    ><p>\end{enumerate} Here&apos;s some example code:</p
    ><p>\begin{verbatim}return shell<em>exec(&quot;echo $input | $markdown</em
      >script&quot;);\end{verbatim}</p
    ><p>\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ &quot;This is a header.&quot; ], {:id=&gt;&quot;this<em>is</em
      >a<em>header&quot;, :level=&gt;2}), MDElement.new(:ol,[ MDElement.new(:li</em
      >span,[ &quot;This is the first list item.&quot; ], {:want<em>my</em
      >paragraph=&gt;false}), MDElement.new(:li<em>span,[ &quot;This is the second list item.&quot; ], {:want</em
      >my<em>paragraph=&gt;false}) ], {}), MDElement.new(:paragraph,[ &quot;Here&apos;s some example code:&quot; ], {}), MDElement.new(:code,[],{:raw</em
      >code=&gt;&quot;return shell<em>exec(\&quot;echo $input | $markdown</em
      >script\&quot;);&quot;}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests: [:inspect] And the following are the actual outputs for methods: [:to<em>html, :to</em
      >latex, :to<em>s, :to</em
      >s, :inspect]:</p
    ><p>(?m-ix:\n***[\w_]+***\n)&lt;blockquote &gt;&lt;h2 id=&apos;this<em>is</em
      >a<em>header&apos;&gt;This is a header.&lt;/h2 &gt;&lt;ol &gt;&lt;li&gt;This is the first list item.&lt;/li &gt;&lt;li&gt;This is the second list item.&lt;/li &gt;&lt;/ol &gt;&lt;p&gt;Here&apos;s some example code:&lt;/p &gt;&lt;pre &gt;&lt;code&gt;return shell</em
      >exec(&quot;echo $input | $markdown<em>script&quot;);&lt;/code &gt;&lt;/pre &gt;&lt;/blockquote &gt;(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{this</em
      >is<em>a</em
      >header}{}\subsection*{{This is a header.}}\label{this<em>is</em
      >a_header}</p
    ><p>\begin{enumerate}% \item This is the first list item. \item This is the second list item.</p
    ><p>\end{enumerate} Here&apos;s some example code:</p
    ><p>\begin{verbatim}return shell<em>exec(&quot;echo $input | $markdown</em
      >script&quot;);\end{verbatim}</p
    ><p>\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- md<em>el(:document,[	md</em
      >el(:quote,[ md<em>el(:header,[	&quot;This is a header.&quot;], {:id=&gt;&quot;this</em
      >is<em>a</em
      >header&quot;, :level=&gt;2}), md<em>el(:ol,[ md</em
      >el(:li<em>span,[	&quot;This is the first list item.&quot;], {:want</em
      >my<em>paragraph=&gt;false}), md</em
      >el(:li<em>span,[	&quot;This is the second list item.&quot;], {:want</em
      >my<em>paragraph=&gt;false}) ]), md</em
      >el(:paragraph,[	&quot;Here&apos;s some example code:&quot;]), md<em>el(:code,[], {:raw</em
      >code=&gt;&quot;return shell<em>exec(\&quot;echo $input | $markdown</em
      >script\&quot;);&quot;}) ])])(?m-ix:\n***[\w_]+***\n)&lt;blockquote&gt;</p
    ><h2>This is a header.</h2
    ><ol>
  <li>This is the first list item.</li
      >
  <li>This is the second list item.</li
      >
  </ol
    ><p>Here's some example code:</p
    ><pre
      ><code>return shell_exec("echo $input | $markdown_script");
</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;/blockquote&gt;</pre
    ><p>(?m-ix:\n***[\w_]+***\n)&lt;blockquote&gt;</p
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;h2&gt;This is a header.</pre
    ><pre
      ><code>  &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;ol&gt;
 &lt;li&gt;This is the first list item.</pre
    ><pre
      ><code>    &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;li&gt;This is the second list item.</pre
    ><pre
      ><code>    &gt;</code
    ></pre
    ><div
    /><pre
      ><code>  &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;p&gt;Here&apos;s some example code:</pre
    ><pre
      ><code>  &gt;</code
    ></pre
    ><div
    /><pre
      ><code>    &gt;&lt;code&gt;return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
    ></pre
    ><div
    /><pre
      ><code>  &gt;&lt;/pre
  &gt;</code
    ></pre
    ><div
    /><p>&gt;</p
  >
*** Output of to_latex ***
\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote\end{verbatim}

\end{quote}
\begin{verbatim}  ><h2 id='this_is_a_header'>This is a header.</h2
  ><ol
    ><li>This is the first list item.</li
    ><li>This is the second list item.</li
  ></ol
  ><p>Here&apos;s some example code:</p
  ><pre
    ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
  ></pre
></blockquote\end{verbatim}
{\tt \char62}(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)$\backslash$begin\{quote\}\% $\backslash$hypertarget\{this{\em is}a{\em header\}\{\}$\backslash$subsection*\{\{This is a header.\}\}$\backslash$label\{this}is{\em a}header\}

$\backslash$begin\{enumerate\}\% $\backslash$item This is the first list item. $\backslash$item This is the second list item.

$\backslash$end\{enumerate\} Here's some example code:

$\backslash$begin\{verbatim\}return shell{\em exec("echo \$input | \$markdown}script");$\backslash$end\{verbatim\}

$\backslash$end\{quote\} (?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], \{:id={\tt \char62}"this{\em is}a{\em header", :level={\tt \char62}2\}),  MDElement.new(:ol,[ MDElement.new(:li}span,[ "This is the first list item." ], \{:want{\em my}paragraph={\tt \char62}false\}),  MDElement.new(:li{\em span,[ "This is the second list item." ], \{:want}my{\em paragraph={\tt \char62}false\}) ], \{\}),  MDElement.new(:paragraph,[ "Here's some example code:" ], \{\}),  MDElement.new(:code,[],\{:raw}code={\tt \char62}"return shell{\em exec($\backslash$"echo \$input | \$markdown}script$\backslash$");"\}) ], \{\}) ], \{\})(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:to{\em html, :to}latex, :to{\em s, :to}s, :inspect]:

(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote {\tt \char62}{\tt \char60}h2 id='this{\em is}a{\em header'{\tt \char62}This is a header.{\tt \char60}/h2 {\tt \char62}{\tt \char60}ol {\tt \char62}{\tt \char60}li{\tt \char62}This is the first list item.{\tt \char60}/li {\tt \char62}{\tt \char60}li{\tt \char62}This is the second list item.{\tt \char60}/li {\tt \char62}{\tt \char60}/ol {\tt \char62}{\tt \char60}p{\tt \char62}Hereaposs some example code:{\tt \char60}/p {\tt \char62}{\tt \char60}pre {\tt \char62}{\tt \char60}code{\tt \char62}return shell}exec(@DOUBLEQUOTecho \$input | \$markdown{\em script@DOUBLEQUOT);{\tt \char60}/code {\tt \char62}{\tt \char60}/pre {\tt \char62}{\tt \char60}/blockquote {\tt \char62}(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)$\backslash$begin\{quote\}\% $\backslash$hypertarget\{this}is{\em a}header\}\{\}$\backslash$subsection*\{\{This is a header.\}\}$\backslash$label\{this{\em is}a\_header\}

$\backslash$begin\{enumerate\}\% $\backslash$item This is the first list item. $\backslash$item This is the second list item.

$\backslash$end\{enumerate\} Here's some example code:

$\backslash$begin\{verbatim\}return shell{\em exec("echo \$input | \$markdown}script");$\backslash$end\{verbatim\}

$\backslash$end\{quote\} (?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)-----| WARNING | ----- md{\em el(:document,[	md}el(:quote,[ md{\em el(:header,[	"This is a header."], \{:id={\tt \char62}"this}is{\em a}header", :level={\tt \char62}2\}), md{\em el(:ol,[ md}el(:li{\em span,[	"This is the first list item."], \{:want}my{\em paragraph={\tt \char62}false\}), md}el(:li{\em span,[	"This is the second list item."], \{:want}my{\em paragraph={\tt \char62}false\}) ]), md}el(:paragraph,[	"Here's some example code:"]), md{\em el(:code,[], \{:raw}code={\tt \char62}"return shell{\em exec($\backslash$"echo \$input | \$markdown}script$\backslash$");"\}) ])])(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote{\tt \char62}

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote{\tt \char62}

{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    ><code>return shell_exec("echo $input | $markdown_script");\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  ></pre
  >\end{verbatim}
{\bf Raw HTML removed in latex version }{\tt \char62}


*** Output of to_s ***
This is a header.This is the first list item.This is the second list item.Here's some example code:>(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisaheader}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], {:id=>"thisisaheader", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:lispan,[ "This is the first list item." ], {:wantmyparagraph=>false}),  MDElement.new(:lispan,[ "This is the second list item." ], {:wantmyparagraph=>false}) ], {}),  MDElement.new(:paragraph,[ "Here's some example code:" ], {}),  MDElement.new(:code,[],{:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:tohtml, :tolatex, :tos, :tos, :inspect]:(?m-ix:\n***[\w_]+***\n)<blockquote ><h2 id='thisisaheader'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Heres some example code:</p ><pre ><code>return shellexec(echo $input | $markdownscript);</code ></pre ></blockquote >(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisa_header}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- mdel(:document,[	mdel(:quote,[ mdel(:header,[	"This is a header."], {:id=>"thisisaheader", :level=>2}), mdel(:ol,[ mdel(:lispan,[	"This is the first list item."], {:wantmyparagraph=>false}), mdel(:lispan,[	"This is the second list item."], {:wantmyparagraph=>false}) ]), mdel(:paragraph,[	"Here's some example code:"]), mdel(:code,[], {:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ])])(?m-ix:\n***[\w_]+***\n)<blockquote>(?m-ix:\n***[\w_]+***\n)<blockquote>>
*** Output of to_s ***
This is a header.This is the first list item.This is the second list item.Here's some example code:>(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisaheader}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], {:id=>"thisisaheader", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:lispan,[ "This is the first list item." ], {:wantmyparagraph=>false}),  MDElement.new(:lispan,[ "This is the second list item." ], {:wantmyparagraph=>false}) ], {}),  MDElement.new(:paragraph,[ "Here's some example code:" ], {}),  MDElement.new(:code,[],{:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:tohtml, :tolatex, :tos, :tos, :inspect]:(?m-ix:\n***[\w_]+***\n)<blockquote ><h2 id='thisisaheader'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Heres some example code:</p ><pre ><code>return shellexec(echo $input | $markdownscript);</code ></pre ></blockquote >(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisa_header}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- mdel(:document,[	mdel(:quote,[ mdel(:header,[	"This is a header."], {:id=>"thisisaheader", :level=>2}), mdel(:ol,[ mdel(:lispan,[	"This is the first list item."], {:wantmyparagraph=>false}), mdel(:lispan,[	"This is the second list item."], {:wantmyparagraph=>false}) ]), mdel(:paragraph,[	"Here's some example code:"]), mdel(:code,[], {:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ])])(?m-ix:\n***[\w_]+***\n)<blockquote>(?m-ix:\n***[\w_]+***\n)<blockquote>>
*** Output of inspect ***
md_el(:document,[
	md_el(:quote,[
		md_el(:header,[	"This is a header."], {:level=>2, :id=>"this_is_a_header"}),
		md_el(:ol,[
			md_el(:li_span,[	"This is the first list item."], {:want_my_paragraph=>false}),
			md_el(:li_span,[	"This is the second list item."], {:want_my_paragraph=>false})
		]),
		md_el(:paragraph,[	"Here's some example code:"]),
		md_el(:code,[], {:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");(?m-ix:\\n\\*\\*\\*[\\w\\_]+\\*\\*\\*\\n)<blockquote"})
	]),
	md_el(:code,[], {:raw_code=>"  ><h2 id='this_is_a_header'>This is a header.</h2\n  ><ol\n    ><li>This is the first list item.</li\n    ><li>This is the second list item.</li\n  ></ol\n  ><p>Here&apos;s some example code:</p\n  ><pre\n    ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code\n  ></pre\n></blockquote"}),
	md_el(:paragraph,[
		">(?m-ix:\\n***[\\w_]+***\\n)\\begin{quote}% \\hypertarget{this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[	"header}{}\\subsection*{{This is a header.}}\\label{this"]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header}"
	]),
	md_el(:paragraph,[	"\\begin{enumerate}% \\item This is the first list item. \\item This is the second list item."]),
	md_el(:paragraph,[	"\\end{enumerate} Here's some example code:"]),
	md_el(:paragraph,[
		"\\begin{verbatim}return shell",
		md_el(:emphasis,[	"exec(\"echo $input | $markdown"]),
		"script\");\\end{verbatim}"
	]),
	md_el(:paragraph,[
		"\\end{quote} (?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ \"This is a header.\" ], {:id=>\"this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[	"header\", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:li"]),
		"span,[ \"This is the first list item.\" ], {:want",
		md_el(:emphasis,[	"my"]),
		"paragraph=>false}),  MDElement.new(:li",
		md_el(:emphasis,[	"span,[ \"This is the second list item.\" ], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}) ], {}),  MDElement.new(:paragraph,[ \"Here's some example code:\" ], {}),  MDElement.new(:code,[],{:raw"]),
		"code=>\"return shell",
		md_el(:emphasis,[	"exec(\\\"echo $input | $markdown"]),
		"script\\\");\"}) ], {}) ], {})(?m-ix:\\n***[\\w_]+***\\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:to",
		md_el(:emphasis,[	"html, :to"]),
		"latex, :to",
		md_el(:emphasis,[	"s, :to"]),
		"s, :inspect]:"
	]),
	md_el(:paragraph,[
		"(?m-ix:\\n***[\\w_]+***\\n)<blockquote ><h2 id='this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[
			"header'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Here",
			md_el(:entity,[], {:entity_name=>"apos"}),
			"s some example code:</p ><pre ><code>return shell"
		]),
		"exec(",
		md_el(:entity,[], {:entity_name=>"quot"}),
		"echo $input | $markdown",
		md_el(:emphasis,[
			"script",
			md_el(:entity,[], {:entity_name=>"quot"}),
			");</code ></pre ></blockquote >(?m-ix:\\n***[\\w_]+***\\n)\\begin{quote}% \\hypertarget{this"
		]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header}{}\\subsection*{{This is a header.}}\\label{this",
		md_el(:emphasis,[	"is"]),
		"a_header}"
	]),
	md_el(:paragraph,[	"\\begin{enumerate}% \\item This is the first list item. \\item This is the second list item."]),
	md_el(:paragraph,[	"\\end{enumerate} Here's some example code:"]),
	md_el(:paragraph,[
		"\\begin{verbatim}return shell",
		md_el(:emphasis,[	"exec(\"echo $input | $markdown"]),
		"script\");\\end{verbatim}"
	]),
	md_el(:paragraph,[
		"\\end{quote} (?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)-----| WARNING | ----- md",
		md_el(:emphasis,[	"el(:document,[\tmd"]),
		"el(:quote,[ md",
		md_el(:emphasis,[	"el(:header,[\t\"This is a header.\"], {:id=>\"this"]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header\", :level=>2}), md",
		md_el(:emphasis,[	"el(:ol,[ md"]),
		"el(:li",
		md_el(:emphasis,[	"span,[\t\"This is the first list item.\"], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}), md"]),
		"el(:li",
		md_el(:emphasis,[	"span,[\t\"This is the second list item.\"], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}) ]), md"]),
		"el(:paragraph,[\t\"Here's some example code:\"]), md",
		md_el(:emphasis,[	"el(:code,[], {:raw"]),
		"code=>\"return shell",
		md_el(:emphasis,[	"exec(\\\"echo $input | $markdown"]),
		"script\\\");\"}) ])])(?m-ix:\\n***[\\w_]+***\\n)<blockquote>"
	]),
	md_el(:raw_html,[], {:raw_html=>"<h2>This is a header.</h2>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<ol>\n  <li>This is the first list item.</li>\n  <li>This is the second list item.</li>\n  </ol>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<p>Here's some example code:</p>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<pre><code>return shell_exec(\"echo $input | $markdown_script\");\n</code></pre>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"</blockquote>"}),
	md_el(:paragraph,[	"(?m-ix:\\n***[\\w_]+***\\n)<blockquote>"]),
	md_el(:raw_html,[], {:raw_html=>"<h2>This is a header."}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"<ol>\n <li>This is the first list item."}),
	md_el(:code,[], {:raw_code=>"    >"}),
	md_el(:raw_html,[], {:raw_html=>"<li>This is the second list item."}),
	md_el(:code,[], {:raw_code=>"    >"}),
	md_el(:raw_html,[], {:raw_html=>" ", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"<p>Here's some example code:"}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:code,[], {:raw_code=>"    ><code>return shell_exec(\"echo $input | $markdown_script\");"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:code,[], {:raw_code=>"  ></pre\n  >"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:paragraph,[	">"])
])
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<blockquote
      ><h2 id='this_is_a_header'>This is a header.</h2
      ><ol
        ><li>This is the first list item.</li
        ><li>This is the second list item.</li
      ></ol
      ><p>Here&apos;s some example code:</p
      ><pre
        ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)&lt;blockquote</code
      ></pre
    ></blockquote
    ><pre
      ><code>  &gt;&lt;h2 id=&apos;this_is_a_header&apos;&gt;This is a header.&lt;/h2
  &gt;&lt;ol
    &gt;&lt;li&gt;This is the first list item.&lt;/li
    &gt;&lt;li&gt;This is the second list item.&lt;/li
  &gt;&lt;/ol
  &gt;&lt;p&gt;Here&amp;apos;s some example code:&lt;/p
  &gt;&lt;pre
    &gt;&lt;code&gt;return shell_exec(&amp;quot;echo $input | $markdown_script&amp;quot;);&lt;/code
  &gt;&lt;/pre
&gt;&lt;/blockquote</code
    ></pre
    ><p>&gt;(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{this<em>is</em
      >a<em>header}{}\subsection*{{This is a header.}}\label{this</em
      >is<em>a</em
      >header}</p
    ><p>\begin{enumerate}% \item This is the first list item. \item This is the second list item.</p
    ><p>\end{enumerate} Here&apos;s some example code:</p
    ><p>\begin{verbatim}return shell<em>exec(&quot;echo $input | $markdown</em
      >script&quot;);\end{verbatim}</p
    ><p>\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ &quot;This is a header.&quot; ], {:id=&gt;&quot;this<em>is</em
      >a<em>header&quot;, :level=&gt;2}), MDElement.new(:ol,[ MDElement.new(:li</em
      >span,[ &quot;This is the first list item.&quot; ], {:want<em>my</em
      >paragraph=&gt;false}), MDElement.new(:li<em>span,[ &quot;This is the second list item.&quot; ], {:want</em
      >my<em>paragraph=&gt;false}) ], {}), MDElement.new(:paragraph,[ &quot;Here&apos;s some example code:&quot; ], {}), MDElement.new(:code,[],{:raw</em
      >code=&gt;&quot;return shell<em>exec(\&quot;echo $input | $markdown</em
      >script\&quot;);&quot;}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests: [:inspect] And the following are the actual outputs for methods: [:to<em>html, :to</em
      >latex, :to<em>s, :to</em
      >s, :inspect]:</p
    ><p>(?m-ix:\n***[\w_]+***\n)&lt;blockquote &gt;&lt;h2 id=&apos;this<em>is</em
      >a<em>header&apos;&gt;This is a header.&lt;/h2 &gt;&lt;ol &gt;&lt;li&gt;This is the first list item.&lt;/li &gt;&lt;li&gt;This is the second list item.&lt;/li &gt;&lt;/ol &gt;&lt;p&gt;Here&apos;s some example code:&lt;/p &gt;&lt;pre &gt;&lt;code&gt;return shell</em
      >exec(&quot;echo $input | $markdown<em>script&quot;);&lt;/code &gt;&lt;/pre &gt;&lt;/blockquote &gt;(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{this</em
      >is<em>a</em
      >header}{}\subsection*{{This is a header.}}\label{this<em>is</em
      >a_header}</p
    ><p>\begin{enumerate}% \item This is the first list item. \item This is the second list item.</p
    ><p>\end{enumerate} Here&apos;s some example code:</p
    ><p>\begin{verbatim}return shell<em>exec(&quot;echo $input | $markdown</em
      >script&quot;);\end{verbatim}</p
    ><p>\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here&apos;s some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- md<em>el(:document,[	md</em
      >el(:quote,[ md<em>el(:header,[	&quot;This is a header.&quot;], {:id=&gt;&quot;this</em
      >is<em>a</em
      >header&quot;, :level=&gt;2}), md<em>el(:ol,[ md</em
      >el(:li<em>span,[	&quot;This is the first list item.&quot;], {:want</em
      >my<em>paragraph=&gt;false}), md</em
      >el(:li<em>span,[	&quot;This is the second list item.&quot;], {:want</em
      >my<em>paragraph=&gt;false}) ]), md</em
      >el(:paragraph,[	&quot;Here&apos;s some example code:&quot;]), md<em>el(:code,[], {:raw</em
      >code=&gt;&quot;return shell<em>exec(\&quot;echo $input | $markdown</em
      >script\&quot;);&quot;}) ])])(?m-ix:\n***[\w_]+***\n)&lt;blockquote&gt;</p
    ><h2>This is a header.</h2
    ><ol>
  <li>This is the first list item.</li
      >
  <li>This is the second list item.</li
      >
  </ol
    ><p>Here's some example code:</p
    ><pre
      ><code>return shell_exec("echo $input | $markdown_script");
</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;/blockquote&gt;</pre
    ><p>(?m-ix:\n***[\w_]+***\n)&lt;blockquote&gt;</p
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;h2&gt;This is a header.</pre
    ><pre
      ><code>  &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;ol&gt;
 &lt;li&gt;This is the first list item.</pre
    ><pre
      ><code>    &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;li&gt;This is the second list item.</pre
    ><pre
      ><code>    &gt;</code
    ></pre
    ><div
    /><pre
      ><code>  &gt;</code
    ></pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;p&gt;Here&apos;s some example code:</pre
    ><pre
      ><code>  &gt;</code
    ></pre
    ><div
    /><pre
      ><code>    &gt;&lt;code&gt;return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
    ></pre
    ><div
    /><pre
      ><code>  &gt;&lt;/pre
  &gt;</code
    ></pre
    ><div
    /><p>&gt;</p
  >
*** Output of to_latex ***
\begin{quote}%
\hypertarget{this_is_a_header}{}\subsection*{{This is a header.}}\label{this_is_a_header}

\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.

\end{enumerate}
Here's some example code:

\begin{verbatim}return shell_exec("echo $input | $markdown_script");(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)<blockquote\end{verbatim}

\end{quote}
\begin{verbatim}  ><h2 id='this_is_a_header'>This is a header.</h2
  ><ol
    ><li>This is the first list item.</li
    ><li>This is the second list item.</li
  ></ol
  ><p>Here&apos;s some example code:</p
  ><pre
    ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code
  ></pre
></blockquote\end{verbatim}
{\tt \char62}(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)$\backslash$begin\{quote\}\% $\backslash$hypertarget\{this{\em is}a{\em header\}\{\}$\backslash$subsection*\{\{This is a header.\}\}$\backslash$label\{this}is{\em a}header\}

$\backslash$begin\{enumerate\}\% $\backslash$item This is the first list item. $\backslash$item This is the second list item.

$\backslash$end\{enumerate\} Here's some example code:

$\backslash$begin\{verbatim\}return shell{\em exec("echo \$input | \$markdown}script");$\backslash$end\{verbatim\}

$\backslash$end\{quote\} (?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], \{:id={\tt \char62}"this{\em is}a{\em header", :level={\tt \char62}2\}),  MDElement.new(:ol,[ MDElement.new(:li}span,[ "This is the first list item." ], \{:want{\em my}paragraph={\tt \char62}false\}),  MDElement.new(:li{\em span,[ "This is the second list item." ], \{:want}my{\em paragraph={\tt \char62}false\}) ], \{\}),  MDElement.new(:paragraph,[ "Here's some example code:" ], \{\}),  MDElement.new(:code,[],\{:raw}code={\tt \char62}"return shell{\em exec($\backslash$"echo \$input | \$markdown}script$\backslash$");"\}) ], \{\}) ], \{\})(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:to{\em html, :to}latex, :to{\em s, :to}s, :inspect]:

(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote {\tt \char62}{\tt \char60}h2 id='this{\em is}a{\em header'{\tt \char62}This is a header.{\tt \char60}/h2 {\tt \char62}{\tt \char60}ol {\tt \char62}{\tt \char60}li{\tt \char62}This is the first list item.{\tt \char60}/li {\tt \char62}{\tt \char60}li{\tt \char62}This is the second list item.{\tt \char60}/li {\tt \char62}{\tt \char60}/ol {\tt \char62}{\tt \char60}p{\tt \char62}Hereaposs some example code:{\tt \char60}/p {\tt \char62}{\tt \char60}pre {\tt \char62}{\tt \char60}code{\tt \char62}return shell}exec(@DOUBLEQUOTecho \$input | \$markdown{\em script@DOUBLEQUOT);{\tt \char60}/code {\tt \char62}{\tt \char60}/pre {\tt \char62}{\tt \char60}/blockquote {\tt \char62}(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)$\backslash$begin\{quote\}\% $\backslash$hypertarget\{this}is{\em a}header\}\{\}$\backslash$subsection*\{\{This is a header.\}\}$\backslash$label\{this{\em is}a\_header\}

$\backslash$begin\{enumerate\}\% $\backslash$item This is the first list item. $\backslash$item This is the second list item.

$\backslash$end\{enumerate\} Here's some example code:

$\backslash$begin\{verbatim\}return shell{\em exec("echo \$input | \$markdown}script");$\backslash$end\{verbatim\}

$\backslash$end\{quote\} (?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n)-----| WARNING | ----- md{\em el(:document,[	md}el(:quote,[ md{\em el(:header,[	"This is a header."], \{:id={\tt \char62}"this}is{\em a}header", :level={\tt \char62}2\}), md{\em el(:ol,[ md}el(:li{\em span,[	"This is the first list item."], \{:want}my{\em paragraph={\tt \char62}false\}), md}el(:li{\em span,[	"This is the second list item."], \{:want}my{\em paragraph={\tt \char62}false\}) ]), md}el(:paragraph,[	"Here's some example code:"]), md{\em el(:code,[], \{:raw}code={\tt \char62}"return shell{\em exec($\backslash$"echo \$input | \$markdown}script$\backslash$");"\}) ])])(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote{\tt \char62}

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }(?m-ix:$\backslash$n***[$\backslash$w\_]+***$\backslash$n){\tt \char60}blockquote{\tt \char62}

{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  >\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}    ><code>return shell_exec("echo $input | $markdown_script");\end{verbatim}
{\bf Raw HTML removed in latex version }\begin{verbatim}  ></pre
  >\end{verbatim}
{\bf Raw HTML removed in latex version }{\tt \char62}


*** Output of to_s ***
This is a header.This is the first list item.This is the second list item.Here's some example code:>(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisaheader}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], {:id=>"thisisaheader", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:lispan,[ "This is the first list item." ], {:wantmyparagraph=>false}),  MDElement.new(:lispan,[ "This is the second list item." ], {:wantmyparagraph=>false}) ], {}),  MDElement.new(:paragraph,[ "Here's some example code:" ], {}),  MDElement.new(:code,[],{:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:tohtml, :tolatex, :tos, :tos, :inspect]:(?m-ix:\n***[\w_]+***\n)<blockquote ><h2 id='thisisaheader'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Heres some example code:</p ><pre ><code>return shellexec(echo $input | $markdownscript);</code ></pre ></blockquote >(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisa_header}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- mdel(:document,[	mdel(:quote,[ mdel(:header,[	"This is a header."], {:id=>"thisisaheader", :level=>2}), mdel(:ol,[ mdel(:lispan,[	"This is the first list item."], {:wantmyparagraph=>false}), mdel(:lispan,[	"This is the second list item."], {:wantmyparagraph=>false}) ]), mdel(:paragraph,[	"Here's some example code:"]), mdel(:code,[], {:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ])])(?m-ix:\n***[\w_]+***\n)<blockquote>(?m-ix:\n***[\w_]+***\n)<blockquote>>
*** Output of to_s ***
This is a header.This is the first list item.This is the second list item.Here's some example code:>(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisaheader}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ "This is a header." ], {:id=>"thisisaheader", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:lispan,[ "This is the first list item." ], {:wantmyparagraph=>false}),  MDElement.new(:lispan,[ "This is the second list item." ], {:wantmyparagraph=>false}) ], {}),  MDElement.new(:paragraph,[ "Here's some example code:" ], {}),  MDElement.new(:code,[],{:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ], {}) ], {})(?m-ix:\n***[\w_]+***\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:tohtml, :tolatex, :tos, :tos, :inspect]:(?m-ix:\n***[\w_]+***\n)<blockquote ><h2 id='thisisaheader'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Heres some example code:</p ><pre ><code>return shellexec(echo $input | $markdownscript);</code ></pre ></blockquote >(?m-ix:\n***[\w_]+***\n)\begin{quote}% \hypertarget{thisisaheader}{}\subsection*{{This is a header.}}\label{thisisa_header}\begin{enumerate}% \item This is the first list item. \item This is the second list item.\end{enumerate} Here's some example code:\begin{verbatim}return shellexec("echo $input | $markdownscript");\end{verbatim}\end{quote} (?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | ----- mdel(:document,[	mdel(:quote,[ mdel(:header,[	"This is a header."], {:id=>"thisisaheader", :level=>2}), mdel(:ol,[ mdel(:lispan,[	"This is the first list item."], {:wantmyparagraph=>false}), mdel(:lispan,[	"This is the second list item."], {:wantmyparagraph=>false}) ]), mdel(:paragraph,[	"Here's some example code:"]), mdel(:code,[], {:rawcode=>"return shellexec(\"echo $input | $markdownscript\");"}) ])])(?m-ix:\n***[\w_]+***\n)<blockquote>(?m-ix:\n***[\w_]+***\n)<blockquote>>
*** Output of inspect ***
md_el(:document,[
	md_el(:quote,[
		md_el(:header,[	"This is a header."], {:level=>2, :id=>"this_is_a_header"}),
		md_el(:ol,[
			md_el(:li_span,[	"This is the first list item."], {:want_my_paragraph=>false}),
			md_el(:li_span,[	"This is the second list item."], {:want_my_paragraph=>false})
		]),
		md_el(:paragraph,[	"Here's some example code:"]),
		md_el(:code,[], {:raw_code=>"return shell_exec(\"echo $input | $markdown_script\");(?m-ix:\\n\\*\\*\\*[\\w\\_]+\\*\\*\\*\\n)<blockquote"})
	]),
	md_el(:code,[], {:raw_code=>"  ><h2 id='this_is_a_header'>This is a header.</h2\n  ><ol\n    ><li>This is the first list item.</li\n    ><li>This is the second list item.</li\n  ></ol\n  ><p>Here&apos;s some example code:</p\n  ><pre\n    ><code>return shell_exec(&quot;echo $input | $markdown_script&quot;);</code\n  ></pre\n></blockquote"}),
	md_el(:paragraph,[
		">(?m-ix:\\n***[\\w_]+***\\n)\\begin{quote}% \\hypertarget{this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[	"header}{}\\subsection*{{This is a header.}}\\label{this"]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header}"
	]),
	md_el(:paragraph,[	"\\begin{enumerate}% \\item This is the first list item. \\item This is the second list item."]),
	md_el(:paragraph,[	"\\end{enumerate} Here's some example code:"]),
	md_el(:paragraph,[
		"\\begin{verbatim}return shell",
		md_el(:emphasis,[	"exec(\"echo $input | $markdown"]),
		"script\");\\end{verbatim}"
	]),
	md_el(:paragraph,[
		"\\end{quote} (?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)MDElement.new(:document,[ MDElement.new(:quote,[ MDElement.new(:header,[ \"This is a header.\" ], {:id=>\"this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[	"header\", :level=>2}),  MDElement.new(:ol,[ MDElement.new(:li"]),
		"span,[ \"This is the first list item.\" ], {:want",
		md_el(:emphasis,[	"my"]),
		"paragraph=>false}),  MDElement.new(:li",
		md_el(:emphasis,[	"span,[ \"This is the second list item.\" ], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}) ], {}),  MDElement.new(:paragraph,[ \"Here's some example code:\" ], {}),  MDElement.new(:code,[],{:raw"]),
		"code=>\"return shell",
		md_el(:emphasis,[	"exec(\\\"echo $input | $markdown"]),
		"script\\\");\"}) ], {}) ], {})(?m-ix:\\n***[\\w_]+***\\n) Failed tests:   [:inspect] And the following are the actual outputs for methods: [:to",
		md_el(:emphasis,[	"html, :to"]),
		"latex, :to",
		md_el(:emphasis,[	"s, :to"]),
		"s, :inspect]:"
	]),
	md_el(:paragraph,[
		"(?m-ix:\\n***[\\w_]+***\\n)<blockquote ><h2 id='this",
		md_el(:emphasis,[	"is"]),
		"a",
		md_el(:emphasis,[
			"header'>This is a header.</h2 ><ol ><li>This is the first list item.</li ><li>This is the second list item.</li ></ol ><p>Here",
			md_el(:entity,[], {:entity_name=>"apos"}),
			"s some example code:</p ><pre ><code>return shell"
		]),
		"exec(",
		md_el(:entity,[], {:entity_name=>"quot"}),
		"echo $input | $markdown",
		md_el(:emphasis,[
			"script",
			md_el(:entity,[], {:entity_name=>"quot"}),
			");</code ></pre ></blockquote >(?m-ix:\\n***[\\w_]+***\\n)\\begin{quote}% \\hypertarget{this"
		]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header}{}\\subsection*{{This is a header.}}\\label{this",
		md_el(:emphasis,[	"is"]),
		"a_header}"
	]),
	md_el(:paragraph,[	"\\begin{enumerate}% \\item This is the first list item. \\item This is the second list item."]),
	md_el(:paragraph,[	"\\end{enumerate} Here's some example code:"]),
	md_el(:paragraph,[
		"\\begin{verbatim}return shell",
		md_el(:emphasis,[	"exec(\"echo $input | $markdown"]),
		"script\");\\end{verbatim}"
	]),
	md_el(:paragraph,[
		"\\end{quote} (?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\\n***[\\w_]+***\\n)-----| WARNING | ----- md",
		md_el(:emphasis,[	"el(:document,[\tmd"]),
		"el(:quote,[ md",
		md_el(:emphasis,[	"el(:header,[\t\"This is a header.\"], {:id=>\"this"]),
		"is",
		md_el(:emphasis,[	"a"]),
		"header\", :level=>2}), md",
		md_el(:emphasis,[	"el(:ol,[ md"]),
		"el(:li",
		md_el(:emphasis,[	"span,[\t\"This is the first list item.\"], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}), md"]),
		"el(:li",
		md_el(:emphasis,[	"span,[\t\"This is the second list item.\"], {:want"]),
		"my",
		md_el(:emphasis,[	"paragraph=>false}) ]), md"]),
		"el(:paragraph,[\t\"Here's some example code:\"]), md",
		md_el(:emphasis,[	"el(:code,[], {:raw"]),
		"code=>\"return shell",
		md_el(:emphasis,[	"exec(\\\"echo $input | $markdown"]),
		"script\\\");\"}) ])])(?m-ix:\\n***[\\w_]+***\\n)<blockquote>"
	]),
	md_el(:raw_html,[], {:raw_html=>"<h2>This is a header.</h2>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<ol>\n  <li>This is the first list item.</li>\n  <li>This is the second list item.</li>\n  </ol>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<p>Here's some example code:</p>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<pre><code>return shell_exec(\"echo $input | $markdown_script\");\n</code></pre>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"</blockquote>"}),
	md_el(:paragraph,[	"(?m-ix:\\n***[\\w_]+***\\n)<blockquote>"]),
	md_el(:raw_html,[], {:raw_html=>"<h2>This is a header."}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"<ol>\n <li>This is the first list item."}),
	md_el(:code,[], {:raw_code=>"    >"}),
	md_el(:raw_html,[], {:raw_html=>"<li>This is the second list item."}),
	md_el(:code,[], {:raw_code=>"    >"}),
	md_el(:raw_html,[], {:raw_html=>" ", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"<p>Here's some example code:"}),
	md_el(:code,[], {:raw_code=>"  >"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:code,[], {:raw_code=>"    ><code>return shell_exec(\"echo $input | $markdown_script\");"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:code,[], {:raw_code=>"  ></pre\n  >"}),
	md_el(:raw_html,[], {:raw_html=>"", :parsed_html=><UNDEFINED/>}),
	md_el(:paragraph,[	">"])
])
*** Output of Markdown.pl ***
<blockquote>
  <h2>This is a header.</h2>
  
  <ol>
  <li>This is the first list item.</li>
  <li>This is the second list item.</li>
  </ol>
  
  <p>Here's some example code:</p>

<pre><code>return shell_exec("echo $input | $markdown_script");(?m-ix:\n\*\*\*[\w\_]+\*\*\*\n)&lt;blockquote
</code></pre>
  
  <p><h2 id='this_is_a_header'>This is a header.</h2
  <ol
  <li>This is the first list item.</li
  <li>This is the second list item.</li
  </ol
  <p>Here&apos;s some example code:</p
  <pre
  <code>return shell<em>exec(&quot;echo $input | $markdown</em>script&quot;);</code
  </pre
  </blockquote
  (?m-ix:\n***[\w_]+***\n)\begin{quote}%
  \hypertarget{this<em>is</em>a<em>header}{}\subsection*{{This is a header.}}\label{this</em>is<em>a</em>header}</p>
</blockquote>

<p>\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.</p>

<p>\end{enumerate}
Here's some example code:</p>

<p>\begin{verbatim}return shell<em>exec("echo $input | $markdown</em>script");\end{verbatim}</p>

<p>\end{quote}
(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)MDElement.new(:document,[ <br />
    MDElement.new(:quote,[ <br />
        MDElement.new(:header,[ 
            "This is a header."
        ], {:id=>"this<em>is</em>a_header", :level=>2}),</p>

<pre><code>    MDElement.new(:ol,[ 
        MDElement.new(:li_span,[    
            "This is the first list item."
        ], {:want_my_paragraph=&gt;false}),

        MDElement.new(:li_span,[    
            "This is the second list item."
        ], {:want_my_paragraph=&gt;false})
    ], {}),

    MDElement.new(:paragraph,[  
        "Here's some example code:"
    ], {}),

    MDElement.new(:code,[],{:raw_code=&gt;"return shell_exec(\"echo $input | $markdown_script\");"})
], {})
</code></pre>

<p>], {})(?m-ix:\n***[\w_]+***\n)
Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to<em>html, :to</em>latex, :to<em>s, :to</em>s, :inspect]:</p>

<p>(?m-ix:\n***[\w_]+***\n)<blockquote</p>

<blockquote>
  <p><h2 id='this_is_a_header'>This is a header.</h2
  <ol
  <li>This is the first list item.</li
  <li>This is the second list item.</li
  </ol
  <p>Here&apos;s some example code:</p
  <pre
  <code>return shell<em>exec(&quot;echo $input | $markdown</em>script&quot;);</code
  </pre
  </blockquote
  (?m-ix:\n***[\w_]+***\n)\begin{quote}%
  \hypertarget{this<em>is</em>a<em>header}{}\subsection*{{This is a header.}}\label{this</em>is<em>a</em>header}</p>
</blockquote>

<p>\begin{enumerate}%
\item This is the first list item.
\item This is the second list item.</p>

<p>\end{enumerate}
Here's some example code:</p>

<p>\begin{verbatim}return shell<em>exec("echo $input | $markdown</em>script");\end{verbatim}</p>

<p>\end{quote}
(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)This is a header.This is the first list item.This is the second list item.Here's some example code:(?m-ix:\n***[\w_]+***\n)-----| WARNING | -----
md<em>el(:document,[   md</em>el(:quote,[
        md<em>el(:header,[ "This is a header."], {:id=>"this</em>is<em>a</em>header", :level=>2}),
        md<em>el(:ol,[
            md</em>el(:li<em>span,[    "This is the first list item."], {:want</em>my<em>paragraph=>false}),
            md</em>el(:li<em>span,[    "This is the second list item."], {:want</em>my<em>paragraph=>false})
        ]),
        md</em>el(:paragraph,[  "Here's some example code:"]),
        md<em>el(:code,[], {:raw</em>code=>"return shell<em>exec(\"echo $input | $markdown</em>script\");"})
    ])])(?m-ix:\n***[\w_]+***\n)<blockquote>
  <h2>This is a header.</h2></p>

<p><ol>
  <li>This is the first list item.</li>
  <li>This is the second list item.</li>
  </ol></p>

<p><p>Here's some example code:</p></p>

<pre><code>return shell_exec("echo $input | $markdown_script");
</code></pre>

<p></blockquote>
(?m-ix:\n***[\w_]+***\n)<blockquote>
 <h2>This is a header.</h2
      ></p>

<p><ol>
 <li>This is the first list item.</li
        >
 <li>This is the second list item.</li
        >
 </ol
      ></p>

<p><p>Here's some example code:</p
      >
<pre</p>

<blockquote>
  <p><code>return shell<em>exec("echo $input | $markdown</em>script");
  </code
  </pre</p>
  
  <p></blockquote</p>
</blockquote>

*** Output of Markdown.pl (parsed) ***
Error: #<REXML::ParseException: #<REXML::ParseException: Missing end tag for 'h2' (got "blockquote")
Line: 
Position: 
Last 80 unconsumed characters:
  <p>\begin{enumerate}% \item This is the first list item. \item This is the seco>
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/baseparser.rb:315:in `pull'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/treeparser.rb:21:in `parse'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:190:in `build'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:45:in `initialize'
bin/marutest:99:in `new'
bin/marutest:99:in `run_test'
bin/marutest:163:in `marutest'
bin/marutest:161:in `each'
bin/marutest:161:in `marutest'
bin/marutest:222
...
Missing end tag for 'h2' (got "blockquote")
Line: 
Position: 
Last 80 unconsumed characters:
  <p>\begin{enumerate}% \item This is the first list item. \item This is the seco
Line: 
Position: 
Last 80 unconsumed characters:
  <p>\begin{enumerate}% \item This is the first list item. \item This is the seco>
