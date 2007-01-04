This is a simple test for attributes
*** Parameters: ***
{}
*** Markdown input: ***
{warn1}

Header with attributes	{#header1}	
----------------------

### Header with attributes ###	{#header2}	

### Header no attributes ###

{warn2}Paragraph with a.
{#par1}

Paragraph with *emphasis*{hello}
   {#par2}

{hello}: .chello
*** Output of inspect ***
md_el(:document,[
	md_el(:header,["Header with attributes"],{:level=>2},[[:id, "header1"]]),
	md_el(:header,["Header with attributes"],{:level=>3},[[:id, "header2"]]),
	md_el(:header,["Header no attributes"],{:level=>3},[[:id, "par1"]]),
	md_par(["Paragraph with ", md_em(["emphasis"], [[:ref, "hello"]])], [[:id, "par2"]])
],{},nil)
*** Output of to_html ***

<h2>Header with attributes</h2>

<h3>Header with attributes</h3>

<h3>Header no attributes</h3>

<p>Paragraph with <em>emphasis</em></p>

*** Output of to_latex ***
\subsection*{Header with attributes}

\subsubsection*{Header with attributes}

\subsubsection*{Header no attributes}

Paragraph with {\em emphasis}


*** Output of to_s ***
Header with attributesHeader with attributesHeader no attributesParagraph with emphasis
*** Output of to_s ***
Header with attributesHeader with attributesHeader no attributesParagraph with emphasis
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>{warn1}</p>

<h2>Header with attributes  {#header1}  </h2>

<h3>Header with attributes ###  {#header2}</h3>

<h3>Header no attributes</h3>

<p>{warn2}Paragraph with a.
{#par1}</p>

<p>Paragraph with <em>emphasis</em>{hello}
   {#par2}</p>

<p>{hello}: .chello</p>

*** Output of Markdown.pl (parsed) ***
<p>{warn1}</p
    ><h2>Header with attributes {#header1} </h2
    ><h3>Header with attributes ### {#header2}</h3
    ><h3>Header no attributes</h3
    ><p>{warn2}Paragraph with a.
{#par1}</p
    ><p>Paragraph with <em>emphasis</em
      >{hello}
 {#par2}</p
    ><p>{hello}: .chello</p
  >