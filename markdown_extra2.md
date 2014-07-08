CSS: style.css
LaTeX_use_listings: true
html_use_syntax: true

Syntax for meta-data 
--------------------

### Shortcuts ###

One sure thing is that in attributes list `#myid` is a shortcut 
for `id: myid` and `.myclass` is a shortcut for `class: myclass`.

### Meta-data for headers ###

For headers, you want to put metadata in the `{}` on the same line:

	### Header ###     {#myid}

	Header     {#myid .myclass}
	------

### Meta-data for block-level elements ###

For paragraphs and other block-level elements, you want to put
the `{}` on the line below:

	This is a paragraph.
	Line 2 of the paragraph.
	
	{#myid .myclass}
	
	A quote with a citation url:
	> Who said that?
	{cite=google.com}

### Meta-data for span-level elements ###

Moreover, you want to use a similar syntax for span-level elements.
For example, in this:

	This is a paragraph. *chunky*{#id1}
	{#id2}
	
you are setting the id attribute to the `em` element to `id1`
and the id of the paragraph to `id2`.

This works also for links, like this:

	This is [a link][ref]{#myid rel=abc rev=abc}

For images, it should be that 

	This is ![Alt text](url "fresh carrots")

is equivalent to
	
	This is ![Alt text](url){title="fresh carrots"}

### Using references ###
	
Then, it is possible to use references: `{<number>}` is threated
as a reference (it is not ambiguous as attribute names cannot start
with digits) and one can write:

	### My header ### {1}
	This is a paragraph with 
	para para para
	{2}
	
	{1}: #header-id
	{2}: #paragraph-id
	
which is equivalent to:

	### My header ### {#header-id}
	This is a paragraph with 
	para para para
	{#paragraph-id}





