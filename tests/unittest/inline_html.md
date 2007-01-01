Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
CSS: style.css

Input:
     <em>Emphasis</em>
Result: <em>Emphasis</em>

Input:
	<img src="http://jigsaw.w3.org/css-validator/images/vcss"/>
Result on span: <img src="http://jigsaw.w3.org/css-validator/images/vcss"/>

Result alone: 

<img src="http://jigsaw.w3.org/css-validator/images/vcss"/>

Without closing:

<img src="http://jigsaw.w3.org/css-validator/images/vcss">

<div markdown="1">
	This is *true* markdown text (paragraph)

	<p markdown="1">
		This is *true* markdown text (no paragraph)
	</p>
</div>

<table>
<tr>
<td markdown="1">This is *true* markdown text. (no par)</td>
<td markdown="block">This is *true* markdown text. (par)</td>
</tr>
</table>


The following is invalid HTML, and will generate an error:

<table>
<td markdown="1">This is *true* markdown text. (no par)</td>
<td markdown="block">This is *true* markdown text. (par)</td>
</tr>
</table>


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"Input: ",
		md_el(:raw_html,[], {:raw_html=>"<em>Emphasis</em> Result: <em>Emphasis</em>"})
	]),
	md_el(:paragraph,[
		"Input: ",
		md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\"/>", :parsed_html=><UNDEFINED> ... </>}),
		" Result on span: ",
		md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\"/>", :parsed_html=><UNDEFINED> ... </>})
	]),
	md_el(:paragraph,[	"Result alone:"]),
	md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\" />", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:paragraph,[	"Without closing:"]),
	md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\" />", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<div markdown=\"1\">\n\tThis is *true* markdown text (paragraph)\n\n\t<p markdown=\"1\">\n\t\tThis is *true* markdown text (no paragraph)\n\t</p>\n</div>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<table>\n<tr>\n<td markdown=\"1\">This is *true* markdown text. (no par)</td>\n<td markdown=\"block\">This is *true* markdown text. (par)</td>\n</tr>\n</table>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:paragraph,[	"The following is invalid HTML, and will generate an error:"]),
	md_el(:raw_html,[], {:raw_html=>"<table>\n<td markdown=\"1\">This is *true* markdown text. (no par)</td>\n<td markdown=\"block\">This is *true* markdown text. (par)</td>\n</tr>"}),
	md_el(:raw_html,[], {:raw_html=>"</table>"})
], {:css=>"style.css"})
*** Output of to_html ***
<p>Input: <pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;em&gt;Emphasis&lt;/em&gt; Result: &lt;em&gt;Emphasis&lt;/em&gt;</pre
    ></p
    ><p>Input: <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /> Result on span: <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Result alone:</p
    ><img src='http://jigsaw.w3.org/css-validator/images/vcss'
    /><p>Without closing:</p
    ><img src='http://jigsaw.w3.org/css-validator/images/vcss'
    /><div
      ><p>This is <em>true</em
        > markdown text (paragraph)</p
      ><p>This is <em>true</em
        > markdown text (no paragraph)</p
    ></div
    ><table>
<tr>
<td>This is <em>true</em
          > markdown text. (no par)</td
        >
<td
          ><p>This is <em>true</em
            > markdown text. (par)</p
        ></td
        >
</tr
      >
</table
    ><p>The following is invalid HTML, and will generate an error:</p
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;table&gt;
&lt;td markdown=&quot;1&quot;&gt;This is *true* markdown text. (no par)&lt;/td&gt;
&lt;td markdown=&quot;block&quot;&gt;This is *true* markdown text. (par)&lt;/td&gt;
&lt;/tr&gt;</pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;/table&gt;</pre
  >
*** Output of to_latex ***
Input: {\bf Raw HTML removed in latex version }

Input: {\bf Raw HTML removed in latex version } Result on span: {\bf Raw HTML removed in latex version }

Result alone:

{\bf Raw HTML removed in latex version }Without closing:

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }The following is invalid HTML, and will generate an error:

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }
*** Output of to_s ***
Input: Input:  Result on span: Result alone:Without closing:The following is invalid HTML, and will generate an error:
*** Output of to_md ***
Input: Input:  Result on span: Result alone:Without closing:The following is invalid HTML, and will generate an error:
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"Input: ",
		md_el(:raw_html,[], {:raw_html=>"<em>Emphasis</em> Result: <em>Emphasis</em>"})
	]),
	md_el(:paragraph,[
		"Input: ",
		md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\"/>", :parsed_html=><UNDEFINED> ... </>}),
		" Result on span: ",
		md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\"/>", :parsed_html=><UNDEFINED> ... </>})
	]),
	md_el(:paragraph,[	"Result alone:"]),
	md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\" />", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:paragraph,[	"Without closing:"]),
	md_el(:raw_html,[], {:raw_html=>"<img src=\"http://jigsaw.w3.org/css-validator/images/vcss\" />", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<div markdown=\"1\">\n\tThis is *true* markdown text (paragraph)\n\n\t<p markdown=\"1\">\n\t\tThis is *true* markdown text (no paragraph)\n\t</p>\n</div>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:raw_html,[], {:raw_html=>"<table>\n<tr>\n<td markdown=\"1\">This is *true* markdown text. (no par)</td>\n<td markdown=\"block\">This is *true* markdown text. (par)</td>\n</tr>\n</table>", :parsed_html=><UNDEFINED> ... </>}),
	md_el(:paragraph,[	"The following is invalid HTML, and will generate an error:"]),
	md_el(:raw_html,[], {:raw_html=>"<table>\n<td markdown=\"1\">This is *true* markdown text. (no par)</td>\n<td markdown=\"block\">This is *true* markdown text. (par)</td>\n</tr>"}),
	md_el(:raw_html,[], {:raw_html=>"</table>"})
], {:css=>"style.css"})
*** Output of to_html ***
<p>Input: <pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;em&gt;Emphasis&lt;/em&gt; Result: &lt;em&gt;Emphasis&lt;/em&gt;</pre
    ></p
    ><p>Input: <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /> Result on span: <img src='http://jigsaw.w3.org/css-validator/images/vcss'
      /></p
    ><p>Result alone:</p
    ><img src='http://jigsaw.w3.org/css-validator/images/vcss'
    /><p>Without closing:</p
    ><img src='http://jigsaw.w3.org/css-validator/images/vcss'
    /><div
      ><p>This is <em>true</em
        > markdown text (paragraph)</p
      ><p>This is <em>true</em
        > markdown text (no paragraph)</p
    ></div
    ><table>
<tr>
<td>This is <em>true</em
          > markdown text. (no par)</td
        >
<td
          ><p>This is <em>true</em
            > markdown text. (par)</p
        ></td
        >
</tr
      >
</table
    ><p>The following is invalid HTML, and will generate an error:</p
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;table&gt;
&lt;td markdown=&quot;1&quot;&gt;This is *true* markdown text. (no par)&lt;/td&gt;
&lt;td markdown=&quot;block&quot;&gt;This is *true* markdown text. (par)&lt;/td&gt;
&lt;/tr&gt;</pre
    ><pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;/table&gt;</pre
  >
*** Output of to_latex ***
Input: {\bf Raw HTML removed in latex version }

Input: {\bf Raw HTML removed in latex version } Result on span: {\bf Raw HTML removed in latex version }

Result alone:

{\bf Raw HTML removed in latex version }Without closing:

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }The following is invalid HTML, and will generate an error:

{\bf Raw HTML removed in latex version }{\bf Raw HTML removed in latex version }
*** Output of to_s ***
Input: Input:  Result on span: Result alone:Without closing:The following is invalid HTML, and will generate an error:
*** Output of to_md ***
Input: Input:  Result on span: Result alone:Without closing:The following is invalid HTML, and will generate an error:
*** Output of Markdown.pl ***
<p>CSS: style.css</p>

<p>Input:
     <em>Emphasis</em>
Result: <em>Emphasis</em></p>

<p>Input:
    <img src="http://jigsaw.w3.org/css-validator/images/vcss"/>
Result on span: <img src="http://jigsaw.w3.org/css-validator/images/vcss"/></p>

<p>Result alone: </p>

<p><img src="http://jigsaw.w3.org/css-validator/images/vcss"/></p>

<p>Without closing:</p>

<p><img src="http://jigsaw.w3.org/css-validator/images/vcss"></p>

<div markdown="1">
    This is *true* markdown text (paragraph)

    <p markdown="1">
        This is *true* markdown text (no paragraph)
    </p>
</div>

<table>
<tr>
<td markdown="1">This is *true* markdown text. (no par)</td>
<td markdown="block">This is *true* markdown text. (par)</td>
</tr>
</table>

<p>The following is invalid HTML, and will generate an error:</p>

<table>
<td markdown="1">This is *true* markdown text. (no par)</td>
<td markdown="block">This is *true* markdown text. (par)</td>
</tr>
</table>

*** Output of Markdown.pl (parsed) ***
Error: #<REXML::ParseException: #<REXML::ParseException: Missing end tag for 'img' (got "p")
Line: 
Position: 
Last 80 unconsumed characters:
  <div markdown="1">     This is *true* markdown text (paragraph)      <p markdow>
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/baseparser.rb:315:in `pull'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/treeparser.rb:21:in `parse'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:190:in `build'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:45:in `initialize'
bin/marutest:112:in `new'
bin/marutest:112:in `run_test'
bin/marutest:176:in `marutest'
bin/marutest:174:in `each'
bin/marutest:174:in `marutest'
bin/marutest:244
...
Missing end tag for 'img' (got "p")
Line: 
Position: 
Last 80 unconsumed characters:
  <div markdown="1">     This is *true* markdown text (paragraph)      <p markdow
Line: 
Position: 
Last 80 unconsumed characters:
  <div markdown="1">     This is *true* markdown text (paragraph)      <p markdow>
