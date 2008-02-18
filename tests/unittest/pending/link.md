Write a comment here
*** Parameters: ***
{} # params 
*** Markdown input: ***
<http://www.aa.com>

 <http://www.bb.com>

  <http://www.cc.com>

   <http://www.dd.com>
*** Output of inspect ***
md_el(:document,[
	md_par([md_url("http://www.aa.com")]),
	md_par([md_url("http://www.bb.com")]),
	md_par([md_url("http://www.cc.com")]),
	md_par([md_url("http://www.dd.com")])
],{},[])
*** Output of to_html ***
<p><a href='http://www.aa.com'>http://www.aa.com</a></p>
<pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
 &lt;http://www.bb.com&gt;

  &lt;http://www.cc.com&gt;

   &lt;http://www.dd.com&gt;</pre>
*** Output of to_latex ***
\href{http://www.aa.com}{http\char58\char47\char47www\char46aa\char46com}
*** Output of to_md ***

*** Output of to_s ***

*** EOF ***




Failed tests:   [:inspect] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_par([md_url("http://www.aa.com")]),
	md_html(" <http://www.bb.com>\n\n  <http://www.cc.com>\n\n   <http://www.dd.com>")
],{},[])
*** Output of to_html ***
<p><a href='http://www.aa.com'>http://www.aa.com</a></p>
<pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
 &lt;http://www.bb.com&gt;

  &lt;http://www.cc.com&gt;

   &lt;http://www.dd.com&gt;</pre>
*** Output of to_latex ***
\href{http://www.aa.com}{http\char58\char47\char47www\char46aa\char46com}
*** Output of to_md ***

*** Output of to_s ***

*** Output of Markdown.pl ***
<p><a href="http://www.aa.com">http://www.aa.com</a></p>

<p><a href="http://www.bb.com">http://www.bb.com</a></p>

<p><a href="http://www.cc.com">http://www.cc.com</a></p>

<p><a href="http://www.dd.com">http://www.dd.com</a></p>

*** Output of Markdown.pl (parsed) ***
Error: #<NoMethodError: private method `write_children' called for <div> ... </>:REXML::Element>
