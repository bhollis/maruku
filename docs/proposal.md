CSS: style.css
LaTeX_use_listings: true
html_use_syntax: true
use_numbered_headers: true

Syntax for meta-data 
====================

This document describe a syntax that makes it possible to attach meta-data  to
block-level elements (headers, paragraphs, code blocks, ...), 
and to span-level elements (links, images, ...).


Last update: December 29th, 2006.

*Table of contents:*
> @toc
> * Table of contents

Attribute lists
---------------

This is an example attribute list, which shows
everything you can put inside:

	{key1=val key2="long val" #myid .class1 .class2 tag1 tag2}

More in particular, an attribute list is a brace-enclosed, whitespace-separated list 
of elements of 4 different kinds:

1. key/value pairs
2. [tags](#using_tags) (`tag1`,`tag2`)
3. [id specifiers](#class_id) (`#myid`)
4. [class specifiers](#class_id) (`.myclass`) 

The formal grammar is specified [below](#grammar).

### `id` and `class` are special ### {#class_id}

You can attach every attribute you want to elements, but
some are threated in a special way:

* `id`: you can only have one ID specified for an element.
   ID must not conflict with one another.

* `class`: class attributes are cumulative.
  It is possible to attach more that one class attribute
  to the same element (just like HTML). 

  In this case, the values get merged. So these are equivalent:

  	{.class1 .class2}
  	{class="class1 class2"}


For ID and classes there are special shortcuts:

* `#myid` is a shortcut for `id=myid`
* `.myclass` is a shortcut for `class=myclass`

Therefore the following attribute lists are equivalent:

	{#myid .class1 .class2} 
	{id=myid class=class1 class=class2}
	{id=myid class="class1 class2"}


Where to put attribute lists
----------------------------

### For block-level elements ###

For paragraphs and other block-level elements, attributes lists go
**after** the element:

	This is a paragraph.
	Line 2 of the paragraph.
	{#myid .myclass}
	
	A quote with a citation url:
	> Who said that?
	{cite=google.com}

Note: empty lines between the block and the attributes list are not tollerated.
So this is not legal:

	This is a paragraph.
	Line 2 of the paragraph.
	
	{#myid .myclass}

Attribute lists may be indented up to 3 spaces:

@ code_show_spaces
	Paragraph1
	 {ok}
	
	Paragraph2
	  {ok}
	
	Paragraph2
	   {ok}

### For headers ###

For headers, you can put attribute lists on the same line:

	### Header ###     {#myid}

	Header     {#myid .myclass}
	------

or, as other block-level elements, on the line after:

	### Header ###     
	{#myid}

	Header     
	------
	{#myid .myclass}

### For span-level elements ###

For span-level elements, metadata goes immediately **after** in the paragraph
flow.


For example, in this:

	This is a *chunky paragraph*{#id1}.
	{#id2}
	
the ID of the `em` element is set to `id1`
and the id of the paragraph is set to `id2`.

This works also for links, like this:

	This is [a link][ref]{#myid rel=abc rev=abc}

For images, this:

	This is ![Alt text](url "fresh carrots")

is equivalent to:
	
	This is ![Alt text](url){title="fresh carrots"}

Using "tags"    {#using_tags}
------------ 

In an attribute list, you can have: 
1. `key=value` pairs,
2. id attributes (`#myid`)
3. class attributes (`.myclass`) 

Everything else is interpreted as a "tag" [^tag].
Tags let you tag an element and then specify
the attributes later:

	# Header #      {tag}

	Blah blah blah.
	
	{tag}: #myhead .myclass lang=fr

Tags are not unique: more than one element can
be assigned the same tag. 

	# Header 1 #      {tag}
	...
	# Header 2 #      {tag}

	{tag}: .myclass lang=fr

In this case, however, you should not assign
the `id` attribute. So this is **not** valid:

	# Header 1 #      {tag}
	...
	# Header 2 #      {tag}

	{tag}: #myid .myclass lang=fr


[^tag]: a better name for this?

Of course, tags are valid for both block-level and span-level elements:

	### My header ### {1}
	This is a paragraph with an *emphasis*{2}
	a and the paragraph goes on.
	{3}
	
	{1}: #header_id
	{2}: #emph_id
	{3}: #par_id


Additional examples and corner-cases
------------------------------------

### Code blocks ###

Note that attributes for code blocks should not be indented
by more than 3 spaces:

@ code_show_spaces
	    This is a code block.
	    {#myid} <-- this is part of the block
	   {#blockid}


Formal grammar          {#grammar}
--------------        

In this section we define the formal grammar AKA the big regexp.

In the spirit of HTML:

> Identifiers must begin with a letter (`[A-Za-z]`) and 
> may be followed by any number of letters, digits (`[0-9]`), 
> hyphens (`-`), underscores (`_`), colons (`:`), and periods (`.`).

the same applies to class attributes and for the keys in key/value pairs. 
Moreover, they are case-sensitive.

So this is a valid attribute list:

	{#my:_A123.veryspecialID .my:____:class }

The regexp for identifiers is therefore

	Identifier = [A-Za-z][A-Za-z0-9_\.\:\-]*

(This is Ruby syntax; I am told it is similar to Perl's so I guess 
it is generally understandable. If not, please tell me the equivalent 
in your language.)

Now: 
* an id attribute is an `Identifier` preceded by `#`
* a class attribute is an `Identifier` preceded by `.`
* a `Tag` is an `Identifier`

* A key/value pair is an Identifier, followed by a `=`, followed by
  a value.

  The value can be quoted (`key="Very long quote"`) or unquoted (`key=small_value`). 

  * An unquoted value must not start with a double quote `"`, and may contain everything
    except whitespace:

    	UnquotedValue =  [^\s\"][^\s]*

    Example:

    	{key1=This=is"myValue_%&$&d9i key2=true}

  * A quoted value is enclosed in double quotes and may contain every char.
    In a quoted value, double quotes and backslashes can be escaped:

    	{key1="\\\" backslash and quote also	a tab"}

### Summary ###

To summarize:

	AttributeList =  \{ (ws [KeyValue|IdSpec|ClassSpec|Tag])*  ws \}    
	Identifier    =  [A-Za-z][A-Za-z0-9_\.\:\-]*
	Tag           =  Identifier 
	IdSpec        =  #Identifier 
	ClassSpec     =  .Identifier 
	KeyValue      =  Key=[QuotedValue|UnquotedValue]
	Key           =  Identifier
	UnquotedValue =  [^\s\"][^\s]*
	QuotedValue   =  \"[^\"]*\"            <---------- note: simplistic

**Note**: I am not able to write the regexp for `QuotedValue` that takes into
account also the escaping of the characters. Any regexp wizard out there?

Things to discuss 
-----------------

* Question: should we allow whitespace at the sides of `=` in key/value pairs?

* Question: should `:` be a synonym for `=` in attributes list. 

  Personally, I like this:
  
  	{key1: value  key2: "value2 with spaces" }

  much more than this:

  	{key1=value  key2="value2 with spaces " }

 
 * A syntax for creating `SPAN` elements in the paragraphs and setting their
   attributes.

   This is my proposal:
 
   	a long paragraph with {special words}{#myspan} that I want to
   	highlight

   should originate the following HTML:

   	<p>a long paragraph with <span id="myspan">special words</span>
   	   that I want to highlight</p>

   This is Michel's comment on this syntax:

   > It looks quite good. One question is can it be amgibuous with braces
   > used for the attributes themselves? I don't have an answer to that
   > question; better ask this on the list.
   
   I don't think it is ambiguous, because it's the only case in which you have
   the sequence `}{`:
   
   	{.*}{Attributes}

   > Another question: does it makes sense to define `<span>` within
   > Markdown when you can't have `<b>` and `<i>`, or the more meaningful
   > `<cite>`, `<q>`, `<dfn>`, and `<var>`? We have to draw the line somewhere,
   > where should it be? Another good question for the list.

   

* anything else?

