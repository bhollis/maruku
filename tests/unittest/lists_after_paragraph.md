Paragraph, list with no space:
* ciao

Paragraph, list with 1 space:
 * ciao

Paragraph, list with 3 space:
   * ciao

Paragraph, list with 4 spaces:
    * ciao

Paragraph, list with 1 tab:
	* ciao

Paragraph (1 space after), list with no space: 
* ciao

Paragraph (2 spaces after), list with no space:  
* ciao

Paragraph (3 spaces after), list with no space:   
* ciao

Paragraph with block quote:
> Quoted

Paragraph with header:
### header ###

Paragraph with header on two lines:
header
------


Paragraph with html after
<div></div>

Paragraph with html after, indented:
     <em>Emphasis</em>

Paragraph with html after, indented: <em>Emphasis</em> *tralla* <em>Emph</em>

Paragraph with html after, indented: <em>Emphasis *tralla* Emph</em>

***EOF***
<p>Paragraph, list with no space: * ciao</p
    ><p>Paragraph, list with 1 space: * ciao</p
    ><p>Paragraph, list with 3 space: * ciao</p
    ><p>Paragraph, list with 4 spaces: * ciao</p
    ><p>Paragraph, list with 1 tab: * ciao</p
    ><p>Paragraph (1 space after), list with no space: * ciao</p
    ><p>Paragraph (2 spaces after), list with no space:<br
      />* ciao</p
    ><p>Paragraph (3 spaces after), list with no space:<br
      />* ciao</p
    ><p>Paragraph with block quote:</p
    ><blockquote
      ><p>Quoted</p
    ></blockquote
    ><p>Paragraph with header:</p
    ><h3 id='header'>header</h3
    ><p>Paragraph with header on two lines: header ------</p
    ><p>Paragraph with html after</p
    ><div
    /><p>Paragraph with html after, indented: <em>Emphasis</em
    ></p
    ><p>Paragraph with html after, indented: <pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;em&gt;Emphasis&lt;/em&gt; *tralla* &lt;em&gt;Emph&lt;/em&gt;</pre
    ></p
    ><p>Paragraph with html after, indented: <em>Emphasis *tralla* Emph</em
    ></p
  >
***EOF***
Paragraph, list with no space: * ciao

Paragraph, list with 1 space: * ciao

Paragraph, list with 3 space: * ciao

Paragraph, list with 4 spaces: * ciao

Paragraph, list with 1 tab: * ciao

Paragraph (1 space after), list with no space: * ciao

Paragraph (2 spaces after), list with no space:\linebreak * ciao

Paragraph (3 spaces after), list with no space:\linebreak * ciao

Paragraph with block quote:

\begin{quote}%
Quoted


\end{quote}
Paragraph with header:

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph with header on two lines: header ------

Paragraph with html after

{\bf Raw HTML removed in latex version }Paragraph with html after, indented: {\bf Raw HTML removed in latex version }

Paragraph with html after, indented: {\bf Raw HTML removed in latex version }

Paragraph with html after, indented: {\bf Raw HTML removed in latex version }


***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------Paragraph with html afterParagraph with html after, indented: Paragraph with html after, indented: Paragraph with html after, indented: 
***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------Paragraph with html afterParagraph with html after, indented: Paragraph with html after, indented: Paragraph with html after, indented: 
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph, list with no space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 3 space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 4 spaces: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 tab: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (1 space after), list with no space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (2 spaces after), list with no space:",
		
		MDElement.new(:linebreak,[],{}),
		
		"* ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (3 spaces after), list with no space:",
		
		MDElement.new(:linebreak,[],{}),
		
		"* ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with block quote:"
	], {}),
	
	MDElement.new(:quote,[	
		MDElement.new(:paragraph,[	
			"Quoted"
		], {})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with header:"
	], {}),
	
	MDElement.new(:header,[	
		"header"
	], {:id=>"header", :level=>3}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with header on two lines:"
	], {}),
	
	MDElement.new(:header,[	
		"header"
	], {:id=>"header", :level=>2}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after"
	], {}),
	
	MDElement.new(:raw_html,[],{:raw_html=>"<div></div>", :parsed_html=><UNDEFINED> ... </>}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis</em>", :parsed_html=><UNDEFINED> ... </>})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis</em> *tralla* <em>Emph</em>"})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis *tralla* Emph</em>", :parsed_html=><UNDEFINED> ... </>})
	], {})
], {})
***EOF***

Failed tests:   [:to_html, :to_latex, :to_s, :to_s] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
-----| WARNING | -----
<p>Paragraph, list with no space: * ciao</p
    ><p>Paragraph, list with 1 space: * ciao</p
    ><p>Paragraph, list with 3 space: * ciao</p
    ><p>Paragraph, list with 4 spaces: * ciao</p
    ><p>Paragraph, list with 1 tab: * ciao</p
    ><p>Paragraph (1 space after), list with no space: * ciao</p
    ><p>Paragraph (2 spaces after), list with no space:<br
      />* ciao</p
    ><p>Paragraph (3 spaces after), list with no space:<br
      />* ciao</p
    ><p>Paragraph with block quote:</p
    ><blockquote
      ><p>Quoted</p
    ></blockquote
    ><p>Paragraph with header:</p
    ><h3 id='header'>header</h3
    ><p>Paragraph with header on two lines:</p
    ><h2 id='header'>header</h2
    ><p>Paragraph with html after</p
    ><div
    /><p>Paragraph with html after, indented: <em>Emphasis</em
    ></p
    ><p>Paragraph with html after, indented: <pre class='markdown-html-error' style='border: solid 3px red; background-color: pink'>HTML parse error: 
&lt;em&gt;Emphasis&lt;/em&gt; *tralla* &lt;em&gt;Emph&lt;/em&gt;</pre
    ></p
    ><p>Paragraph with html after, indented: <em>Emphasis *tralla* Emph</em
    ></p
  >
***EOF***
-----| WARNING | -----
Paragraph, list with no space: * ciao

Paragraph, list with 1 space: * ciao

Paragraph, list with 3 space: * ciao

Paragraph, list with 4 spaces: * ciao

Paragraph, list with 1 tab: * ciao

Paragraph (1 space after), list with no space: * ciao

Paragraph (2 spaces after), list with no space:\linebreak * ciao

Paragraph (3 spaces after), list with no space:\linebreak * ciao

Paragraph with block quote:

\begin{quote}%
Quoted


\end{quote}
Paragraph with header:

\hypertarget{header}{}\subsubsection*{{header}}\label{header}

Paragraph with header on two lines:

\hypertarget{header}{}\subsection*{{header}}\label{header}

Paragraph with html after

{\bf Raw HTML removed in latex version }Paragraph with html after, indented: {\bf Raw HTML removed in latex version }

Paragraph with html after, indented: {\bf Raw HTML removed in latex version }

Paragraph with html after, indented: {\bf Raw HTML removed in latex version }


***EOF***
-----| WARNING | -----
-----| WARNING | -----
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines:headerParagraph with html afterParagraph with html after, indented: Paragraph with html after, indented: Paragraph with html after, indented: 
***EOF***
-----| WARNING | -----
-----| WARNING | -----
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines:headerParagraph with html afterParagraph with html after, indented: Paragraph with html after, indented: Paragraph with html after, indented: 
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph, list with no space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 3 space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 4 spaces: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 tab: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (1 space after), list with no space: * ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (2 spaces after), list with no space:",
		
		MDElement.new(:linebreak,[],{}),
		
		"* ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph (3 spaces after), list with no space:",
		
		MDElement.new(:linebreak,[],{}),
		
		"* ciao"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with block quote:"
	], {}),
	
	MDElement.new(:quote,[	
		MDElement.new(:paragraph,[	
			"Quoted"
		], {})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with header:"
	], {}),
	
	MDElement.new(:header,[	
		"header"
	], {:id=>"header", :level=>3}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with header on two lines:"
	], {}),
	
	MDElement.new(:header,[	
		"header"
	], {:id=>"header", :level=>2}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after"
	], {}),
	
	MDElement.new(:raw_html,[],{:raw_html=>"<div></div>", :parsed_html=><UNDEFINED> ... </>}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis</em>", :parsed_html=><UNDEFINED> ... </>})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis</em> *tralla* <em>Emph</em>"})
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph with html after, indented: ",
		
		MDElement.new(:raw_html,[],{:raw_html=>"<em>Emphasis *tralla* Emph</em>", :parsed_html=><UNDEFINED> ... </>})
	], {})
], {})
***EOF***
<p>Paragraph, list with no space:
* ciao</p>

<p>Paragraph, list with 1 space:
 * ciao</p>

<p>Paragraph, list with 3 space:
   * ciao</p>

<p>Paragraph, list with 4 spaces:
    * ciao</p>

<p>Paragraph, list with 1 tab:
    * ciao</p>

<p>Paragraph (1 space after), list with no space: 
* ciao</p>

<p>Paragraph (2 spaces after), list with no space: <br />
* ciao</p>

<p>Paragraph (3 spaces after), list with no space: <br />
* ciao</p>

<p>Paragraph with block quote:</p>

<blockquote>
  <p>Quoted</p>
</blockquote>

<p>Paragraph with header:</p>

<h3>header</h3>

<p>Paragraph with header on two lines:</p>

<h2>header</h2>

<p>Paragraph with html after</p>

<div></div>

<p>Paragraph with html after, indented:
     <em>Emphasis</em></p>

<p>Paragraph with html after, indented: <em>Emphasis</em> <em>tralla</em> <em>Emph</em></p>

<p>Paragraph with html after, indented: <em>Emphasis <em>tralla</em> Emph</em></p>

***EOF***
<p>Paragraph, list with no space:
* ciao</p
    ><p>Paragraph, list with 1 space:
 * ciao</p
    ><p>Paragraph, list with 3 space:
 * ciao</p
    ><p>Paragraph, list with 4 spaces:
 * ciao</p
    ><p>Paragraph, list with 1 tab:
 * ciao</p
    ><p>Paragraph (1 space after), list with no space: 
* ciao</p
    ><p>Paragraph (2 spaces after), list with no space: <br
      />
* ciao</p
    ><p>Paragraph (3 spaces after), list with no space: <br
      />
* ciao</p
    ><p>Paragraph with block quote:</p
    ><blockquote>
 <p>Quoted</p
      >
</blockquote
    ><p>Paragraph with header:</p
    ><h3>header</h3
    ><p>Paragraph with header on two lines:</p
    ><h2>header</h2
    ><p>Paragraph with html after</p
    ><div
    /><p>Paragraph with html after, indented:
 <em>Emphasis</em
    ></p
    ><p>Paragraph with html after, indented: <em>Emphasis</em
      ><em>tralla</em
      ><em>Emph</em
    ></p
    ><p>Paragraph with html after, indented: <em>Emphasis <em>tralla</em
        > Emph</em
    ></p
  >