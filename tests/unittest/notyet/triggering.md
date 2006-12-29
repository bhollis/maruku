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


***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------
***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph, list with no space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 3 space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 4 spaces: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 tab: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (1 space after), list with no space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (2 spaces after), list with no space:"
		
		MDElement.new(:linebreak,[],
		{})
		
		"* ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (3 spaces after), list with no space:"
		
		MDElement.new(:linebreak,[],
		{})
		
		"* ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph with block quote:"],
	{})
	
	MDElement.new(:quote,[	
		MDElement.new(:paragraph,[	
			"Quoted"],
		{})],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph with header:"],
	{})
	
	MDElement.new(:header,[	
		"header"],
	{:level=>3, :id=>"header"})
	
	MDElement.new(:paragraph,[	
		"Paragraph with header on two lines: header ------"],
	{})],
{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


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


***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------
***EOF***
Paragraph, list with no space: * ciaoParagraph, list with 1 space: * ciaoParagraph, list with 3 space: * ciaoParagraph, list with 4 spaces: * ciaoParagraph, list with 1 tab: * ciaoParagraph (1 space after), list with no space: * ciaoParagraph (2 spaces after), list with no space:* ciaoParagraph (3 spaces after), list with no space:* ciaoParagraph with block quote:QuotedParagraph with header:headerParagraph with header on two lines: header ------
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph, list with no space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 3 space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 4 spaces: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph, list with 1 tab: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (1 space after), list with no space: * ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (2 spaces after), list with no space:"
		
		MDElement.new(:linebreak,[],
		{})
		
		"* ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph (3 spaces after), list with no space:"
		
		MDElement.new(:linebreak,[],
		{})
		
		"* ciao"],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph with block quote:"],
	{})
	
	MDElement.new(:quote,[	
		MDElement.new(:paragraph,[	
			"Quoted"],
		{})],
	{})
	
	MDElement.new(:paragraph,[	
		"Paragraph with header:"],
	{})
	
	MDElement.new(:header,[	
		"header"],
	{:level=>3, :id=>"header"})
	
	MDElement.new(:paragraph,[	
		"Paragraph with header on two lines: header ------"],
	{})],
{})
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
