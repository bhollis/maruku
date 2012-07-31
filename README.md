# Maruku

Maruku is a Markdown-superset interpreter.

Maruku implements:

* The original Markdown syntax.
* All the improvements in PHP Markdown Extra.
* A new meta-data syntax.

## Basic Use

The basic use is to create a new document, and then write
its HTML representation with the method `to_html`:

    doc = Maruku.new(markdown_string)
    puts doc.to_html

The `#to_html` method returns a string,
representing an HTML fragment.

    Maruku.new("## Header ##").to_html
    # => "<h2 id='header'>header</h2>"

This is useful for using Maruku inside other programs.

If you want to create full HTML documents,
use the `#to_html_document` method.

### Error Management

Maruku has a real parser,
so it warns you if something is wrong with the input.
The default behaviour is to print a warning on standard error,
and then try to continue.

This behavior can be customized with the `:on_error` option.
For example:

    Maruku.new(string, :on_error => :raise)

This tells Maruku to raise an exception
if it encounters a parsing error.

To change the error stream, use the `:error_stream` option:

    errors = "Errors reported by Maruku:\n"
    Maruku.new(invalid, :error_stream => errors)

You can pass in any object that supports the `<<` method.

## Command-line usage

Maruku comes with two command-line programs: `maruku` and `marutex`.

`maruku` converts Markdown to HTML:

    !!!bash
    $ maruku file.md  # creates file.html

`marutex` converts Markdown to LaTeX,
then calls `pdflatex` to transform the LaTeX to a PDF:

    !!!bash
    $ marutex file.md  # creates file.tex and file.pdf

## Code organization

The public interface is the `Maruku` class.
Everything else is in the module `MaRuKu`.

# Build Status

[![Build Status](http://travis-ci.org/bhollis/maruku.png)](http://travis-ci.org/bhollis/maruku)

## License

Copyright (c) 2006 Andrea Censi. GPLv2 Licensed, see [LICENSE] for details.

[LICENSE]: https://github.com/bhollis/maruku/blob/master/LICENSE
