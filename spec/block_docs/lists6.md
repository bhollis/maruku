## Nested

*	Tab
	*	Tab
		*	Tab

Here's another:

1. First
2. Second:
	* Fee
	* Fie
	* Foe
3. Third

Same thing but with paragraphs:

1. First

2. Second:
	* Fee
	* Fie
	* Foe

3. Third


*** Parameters: ***
{}
*** Markdown input: ***

*** Output of inspect ***
md_el(:document,[],{},[])
*** Output of to_html ***
<h1 id="nested_1">Nested</h1>

<ul>
<li>  Tab

<ul>
<li>  Tab

<ul>
<li>  Tab</li>
</ul></li>
</ul></li>
</ul>

<p>Here&#39;s another:</p>

<ol>
<li>First</li>
<li>Second:

<ul>
<li>Fee</li>
<li>Fie</li>
<li>Foe</li>
</ul></li>
<li>Third</li>
</ol>

<p>Same thing but with paragraphs:</p>

<ol>
<li><p>First</p></li>
<li><p>Second:</p>

<ul>
<li>Fee</li>
<li>Fie</li>
<li>Foe</li>
</ul></li>
<li><p>Third</p></li>
</ol>
*** Output of to_latex ***

*** Output of to_md ***

*** Output of to_s ***

