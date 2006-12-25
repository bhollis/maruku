Title: Maruku, a Markdown interpreter 
CSS: style.css
latex_use_listings: true
html_use_syntax: true

Mar**u**k**u**: a Markdown interpreter 
======================================

[Maruku][] is a Markdown interpreter written in [Ruby][].

[maruku]: <http://maruku.rubyforge.org/>

Maruku allows you to write in an easy-to-read-and-write syntax, like this:

> [This document in Markdown](http://maruku.rubyforge.org/maruku.md)

Then it can be translated to HTML:

> [This document in HTML](http://maruku.rubyforge.org/maruku.html)
	
or Latex, which is then converted to PDF:

> [This document in PDF](http://maruku.rubyforge.org/maruku.pdf)

Maruku implements the original [Markdown syntax][] 
([HTML](http://maruku.rubyforge.org/markdown_syntax.html) or
[PDF](http://maruku.rubyforge.org/markdown_syntax.pdf), translated by Maruku).

Markdown implements also all the improvements 
in [PHP Markdown Extra][]. 

Moreover, it implements ideas from [MultiMarkdown][].

### Authors ###

Maruku has been developed so far by [Andrea Censi][].
Contributors are most welcome!

[Andrea Censi]: http://www.dis.uniroma1.it/~acensi/

* * *

*Table of contents*:

* [Download](#download)
* [Usage](#usage)
* [Examples of PHP Markdown extra syntax](#extra)
* [New metadata syntax](#meta)
* [List of metadata](#metalist)
* [Maruku and Bluecloth](#maruku-and-bluecloth)
* [Future developments](#future)
  * [Export to other formats](#future-export)
  * [Syntax additions](#future-syntax)

* * *

@ class: head

Download       {#download}
--------

The development site is <http://rubyforge.org/projects/maruku/>.

	
Install with:

	$ gem install maruku

Released files can also be seen at <http://rubyforge.org/frs/?group_id=2795>.

Anonymous access to the repository is possible with:

	$ svn checkout svn://rubyforge.org/var/svn/maruku

If you want commit access to the repository, just create an account on Rubyforge and [drop me a mail][drop].

[drop]: http://www.dis.uniroma1.it/~acensi/contact.html
[gem]: http://rubygems.rubyforge.org/

### Bugs report ###

Use the [tracker](http://rubyforge.org/tracker/?group_id=2795)
or [drop me an email][drop].

Usage
--------

This is the basic usage:

@ lang: ruby

	require 'rubygems'
	require 'maruku'

	doc = Maruku.new(markdown_string)
	puts doc.to_html

The method `to_html` outputs only an HTML fragment, while the method `to_html_document` output a complete XHTML 1.0 document:

@ lang: ruby

	puts doc.to_html_document
	
You can have the REXML document tree with:

@ lang: ruby

	tree = doc.to_html_document_tree

### From the command line ###

There are two command-line programs installed: `maruku` and `marutex`

`maruku` converts Markdown in HTML:

	$ maruku file.md  # creates file.html

`marutex` converts Markdown in TeX, then calls `pdflatex` to 
transform to PDF:

	$ marutex file.md  # creates file.tex and file.pdf


Examples of PHP Markdown Extra syntax {#extra}
-------------------------------------

* tables

  	Col1 | Very very long head | Very very long head|
  	-----|:-------------------:|-------------------:|
  	cell | center-align        | right-align        |

  @ class: example

  Col1 | Very very long head | Very very long head|
  -----|:-------------------:|-------------------:|
  cell | center-align        | right-align        |


* footnotes [^foot]

  	* footnotes [^foot]

  	[^foot]: I really was missing those.

[^foot]: I really was missing those.

* Markdown inside HTML elememnts

@lang: html

  	<div markdown="1" style="border: solid 1px black">
  	   This is a div with Markdown **strong text**
  	</div>

  <div markdown="1" style="border: solid 1px black">
     This is a div with Markdown **strong text**
  </div>


* header ids
      ## Header ##     {#id}
  For example, [a link to the download](#download) header.

* definition lists

  	Definition list
  	: something very hard to parse

  Definition list
  : something very hard to parse

* abbreviations or ABB for short.

*[ABB]: Simple an abbreviation



Maruku and Bluecloth          {#maruku-and-bluecloth}
--------------------

The other Ruby implementation of Markdown is [Bluecloth][]. 

Maruku is much different in philosophy from Bluecloth: the biggest 
difference is that *parsing* is separated from *rendering*.
In Maruku, an in-memory representation of the Markdown
document is created. Instead, Bluecloth mantains the document in
memory as a String at all times, and does a series of `gsub` 
to transform to HTML.

[^1]: "a different philosophy" stands for "ugly" `:-)`

The in-memory representation makes it very easy to export
to various formats (altough, for, now)

Other improvements over Bluecloth:

* the HTML output is provided also as a `REXML` document tree.

* PHP Markdown Syntax support.

[ruby]: http://www.ruby-lang.org
[bluecloth]: http://www.deveiate.org/projects/BlueCloth
[Markdown syntax]: http://daringfireball.net/projects/markdown/syntax
[PHP Markdown Extra]: http://www.michelf.com/projects/php-markdown/extra/


New meta-data syntax {#meta}
--------------------

Maruku implements a syntax that allows to attach "meta" information
to objects.

### Meta-data for the document ###

Meta-data for the document itself is specified through the use
of email headers:

	Title: A simple document containing meta-headers
	CSS: style.css
	
	Content of the document

When creating the document through 

@ lang: ruby

	Maruku.new(s).to_html_document

the title and stylesheet are added as expected.


### Meta-data for elements ###

Maruku introduces a new syntax for attaching metadata to paragraphs, tables, and
so on.

For example, consider the creation of two paragraphs:

	Paragraph 1 is a warning.

	Paragraph 2

Now you really want to attach a 'class' attribute to the paragraphs (for
example for CSS styling). Maruku allows you to use:

	@ class: warning
	Paragraph 1 is a warning

	Paragraph 2
	

You can add more by separating with a `;`:

	@ class: warning; id: warning1
	Paragraph 1 is a warning

A meta-data declaration is composed of 

1. newline
2. an at-symbol '@'
3. a series of name-value pairs. Each name-value is separated 
   by a colon `:`, pairs are separated by semi-colons `;` 

Many declaration can be used, and they refer to _the following_ object:

	@ class: warning
	@ id: warning1
	Paragraph 1 is a warning

These can also be separated by newlines:

	@ class: warning

	@ id: warning1

	Paragraph 1 is a warning

Also, if the value is not present, it defaults to `true`:

	@ test

	This paragraph has the attribute 'test' set.

* * *

List of meta-data       {#metalist}
-----------------



**`title`, `subject`**
: (document) Sets the title of the document (HTML: used in the `TITLE` element).

**`css`**
: (document, HTML) Url of stylesheet.

**`html_use_syntax`**
: (document, HTML) Use the [`syntax` library][syntax] to add source highlighting.

**`latex_use_listings`**
: (document, LaTex) Use fancy `listing` package for better displaying code blocks.

**`style`, `id`, `class`**
: (any block object, HTML) Standard CSS attributes are copied.

**`lang`**
: (code blocks) Name of programming language (`ruby`) for syntax highlighting (does not work yet)

      Default for this is `code_lang` in document.

**`code_show_spaces`**
: Shows tabs and newlines (default is read in the document object).

**`code_background_color`**
: Background color for code blocks. (default is read in the document object).

    The format is either a named color (`green`, `red`) or a CSS color
    of the form `#ff00ff`. 

    * for **HTML output**, the value is put straight in the `background-color` CSS 
      property of the block.

    * for **LaTeX output**, if it is a named color, it must be a color accepted
      by the latex `color` packages. If it is of the form `#ff00ff`, Maruku
      defines a color using the `\color[rgb]{r,g,b}` macro. 

      For example, for `#0000ff`, the macro is called as: `\color[rgb]{0,0,1}`.

[syntax]: http://syntax.rubyforge.org/


### Examples ###

An example of this is the following:

@ code_show_spaces
	@ code_show_spaces; code_background_color: green
	
		 One space
		  Two spaces
			 	Tab, space, tab
					Tab, tab, tab and all is green!

That will produce:

@ code_show_spaces
@ code_background_color: green

	 One space
	  Two spaces
		 	Tab, space, tab
				Tab, tab, tab and all is green!

Example with css-style color:

	@ code_background_color: #455678

		A strange color

produces:

@ code_background_color: #455678

	A strange color

Or highlighting (does not work well yet):

	@ lang: xml
		<div style="text-align:center">Div</div>

produces:

@ lang: xml
	<div style="text-align:center">Div</div>

* * *

Future developments                              {#future}
-------------------

I think that [Pandoc][] and [MultiMarkdown][] are very cool projects.
However, they are written in Haskell and Perl, respectively. 
I would love to have an equivalent in Ruby.


### Syntax improvements ###                     {#future-syntax}

Things I'm thinking about:

* a syntax for commenting parts of the document:

      This is a paragraph
      % This is a comment

* choose a syntax for adding math:

      This is inline math: $\alpha$

      This is an equation with label:

      $ \alpha = \beta + \gamma  $        (eq:1)

      This is a reference to equation: please see (eq:1)



[Pandoc]: http://sophos.berkeley.edu/macfarlane/pandoc/
[MultiMarkdown]: http://fletcher.freeshell.org/wiki/MultiMarkdown

