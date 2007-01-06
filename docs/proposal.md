CSS: style.css
LaTeX_use_listings: true
html_use_syntax: true
use_numbered_headers: true

Proposal for adding a meta-data syntax to Markdown
=============================================

This document describes a syntax for attaching meta-data to
block-level elements (headers, paragraphs, code blocks,&hellip;), 
and to span-level elements (links, images,&hellip;).

Last updated **January 2nd, 2007**: integrated topics 
discussed in mailing list.

*Table of contents:*

> * Table of contents
> {toc}

Overview
--------

This proposal describes two additions to the Markdown syntax:

1. inline attribute lists (IAL)

   	## Header ##       {key=val .class #id ref_id}

2. attribute lists definitions (ALD)

   	{ref_id}: key=val .class #id

Every span-level or block-level element can be followed by an IAL:

	### Header ###     {#header1 class=c1}
	
	Paragraph *with emphasis*{class=c1}
	second line of paragraph
	{class=c1}

In this example, the three IALs refer to the header, the emphasis span, and the entire paragraph, respectively.

IALs can reference ALDs. The result of the following example is the same as the previous one:

	### Header ###  {#header1 c1}

	Paragraph *with emphasis*{c1}
	second line of paragraph
	{c1}
	
	{c1}: class=c1

Attribute lists
---------------

This is an example attribute list, which shows
everything you can put inside:

	key1=val key2="long val" #myid .class1 .class2 ref1 ref2

More in particular, an attribute list is a   whitespace-separated list 
of elements of 4 different kinds:

1. key/value pairs (quoted if necessary)
2. [references to ALD](#using_tags) (`ref1`,`ref2`)
3. [id specifiers](#class_id) (`#myid`)
4. [class specifiers](#class_id) (`.myclass`) 

### `id` and `class` are special ### {#class_id}

For ID and classes there are special shortcuts:

* `#myid` is a shortcut for `id=myid`
* `.myclass` means "add `myclass` to the current `class` attribute".

  So these are equivalent:

  	{.class1 .class2}
  	{class="class1 class2"}


The following attribute lists are equivalent:

	{#myid .class1 .class2} 
	{id=myid class=class1 .class2}
	{id=myid class="class1 class2"}
	{id=myid class="will be overridden" class=class1 .class2}

Where to put inline attribute lists
----------------------------------

### For block-level elements ###

For paragraphs and other block-level elements, IAL go
**after** the element:

	This is a paragraph.
	Line 2 of the paragraph.
	{#myid .myclass}
	
	A quote with a citation url:
	> Who said that?
	{cite=google.com}

Note: empty lines between the block and the IAL are not tollerated.
So this is not legal:

	This is a paragraph.
	Line 2 of the paragraph.
	
	{#myid .myclass}

Attribute lists may be indented up to 3 spaces:

	Paragraph1
	 {ok}
	
	Paragraph2
	  {ok}
	
	Paragraph2
	   {ok}
{code_show_spaces}

### For headers ###

For headers, you can put attribute lists on the same line:

	### Header ###     {#myid}

	Header     {#myid .myclass}
	------

or, as like other block-level elements, on the line below:

	### Header ###     
	{#myid}

	Header     
	------
	{#myid .myclass}

### For span-level elements ###

For span-level elements, meta-data goes immediately **after** in the 
flow.

For example, in this:

	This is a *chunky paragraph*{#id1}
	{#id2}
	
the ID of the `em` element is set to `id1`
and the ID of the paragraph is set to `id2`.

This works also for links, like this:

	This is [a link][ref]{#myid rel=abc rev=abc}

For images, this:

	This is ![Alt text](url "fresh carrots")

is equivalent to:
	
	This is ![Alt text](url){title="fresh carrots"}

Using attributes lists definition    {#using_tags}
---------------------------------

In an attribute list, you can have: 

1. `key=value` pairs,
2. id attributes (`#myid`)
3. class attributes (`.myclass`) 

Everything else is interpreted as a reference to 
an ALD.

	# Header #      {ref}

	Blah blah blah.
	
	{ref}: #myhead .myclass lang=fr

Of course, more than one IAL can reference the same ALD:

	# Header 1 #      {1}
	...
	# Header 2 #      {1}

	{1}: .myclass lang=fr


The rules           {#grammar}
---------

### The issue of escaping ###

1. No escaping in code blocks.

   * ``` `\` ``` represents the one-character string `\`.

2. Everywhere else, **all** characters **can** be escaped:

   * `\|` is the literal `|`, `\n` is the literal `n`.
   * `\ ` represents a non-breaking space.
   *  `\` followed by a newline represents a linebreak.

3. Quotes **must** be escaped inside quoted values:
   
   * Inside `"quoted values"`, you **must** escape `"`.
   * Inside `'quoted values'`, you **must** escape `'`.

   * Other examples:

     `"bah 'bah' bah"` =  `"bah \'bah\' bah"` = `'bah \'bah\' bah'`
     
     `'bah "bah" bah'` =  `'bah \"bah\" bah'` = `"bah \"bah\" bah"`


4. There is an exception for backward compatibility: 

   	[text](url "title"with"quotes")


### Syntax for attribute lists ####

Consider the following attribute list:

	{key=value ref key2="quoted value" }
	
In this string, `key`, `value`, and `ref` can be substituted by any
string that does not contain whitespace, or the unescaped characters `}`,`=`,`'`,`"`.

Inside a quoted value, you **may** use `}`,`=` unescaped but you **must**
escape the other kind of quote.


Things to discuss 
-----------------

* A syntax for creating `SPAN` elements in the paragraphs and setting their attributes.

  This is my proposal:

  	a long paragraph with [special words]{#myspan} that I want to
  	highlight

  should originate the following HTML:

  	<p>a long paragraph with <span id="myspan">special words</span>
  	   that I want to highlight</p>

  ***Note: I changed the old `{special words}{#myspan}` with `[special words]{#myspan}` which is less ambiguous.***

* > Another question: does it makes sense to define `<span>` within
  > Markdown when you can't have `<b>` and `<i>`, or the more meaningful
  > `<cite>`, `<q>`, `<dfn>`, and `<var>`? We have to draw the line somewhere,
  > where should it be? Another good question for the list.

  Any opinion?

* **Default ALD for classes of elements.**  For example, an header of level 2 inherits automatically the attributes of `{header2}`, if it is defined.

  	## Header ##
  	
  	Paragraph..
  	
  	## Second Header ## {.mah} 
  	
  	Paragraph..
  	
  	{header2}: .myclass
  	{paragraph}: .withmargins

In this example:

* the first header has attributes `class=myclass`
* the second header has attributes `class="myclass mah"`
* the two paragraphs have attributes `class=withmargins`


Design rationale
----------------

* Question: should we allow whitespace at the sides of `=` in key/value pairs?

  > No, because it is difficult to parse.

* Question: should `:` be a synonym for `=` in attributes list?

  > No, because ':' is used for XML namespaces (`xml:lang=en`)
 


