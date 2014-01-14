# Maruku

Maruku is a Markdown-superset interpreter.

Maruku implements:

* The original Markdown syntax.
* All the improvements in PHP Markdown Extra.
* A new meta-data syntax.

Read more about [Maruku's Markdown syntax](https://github.com/bhollis/maruku/blob/master/docs/markdown_syntax.md). It also supports [inline math](https://github.com/bhollis/maruku/blob/master/docs/math.md). [Maruku docs](http://rdoc.info/github/bhollis/maruku/master/).

News about Maruku is posted at [http://benhollis.net/blog/category/maruku/](http://benhollis.net/blog/category/maruku/)

[![Build Status](https://api.travis-ci.org/bhollis/maruku.png?branch=master)][travis]
[![Gem Version](https://fury-badge.herokuapp.com/rb/maruku.png)](http://badge.fury.io/rb/maruku)
[![Dependency Status](https://gemnasium.com/bhollis/maruku.png)](https://gemnasium.com/bhollis/maruku)
[![Code Climate](https://codeclimate.com/github/bhollis/maruku.png)](https://codeclimate.com/github/bhollis/maruku)
[![Coverage Status](https://coveralls.io/repos/bhollis/maruku/badge.png)](https://coveralls.io/r/bhollis/maruku)

**Note**: [Maruku should be considered obsolete](http://benhollis.net/blog/2013/10/20/maruku-is-obsolete/), as it has been superceded by better libraries like Kramdown. It is still supported, so feel free to continue filing bug reports.

## Installing

Make sure you have Ruby and RubyGems, then run:

    gem install maruku

## Basic use

To convert Markdown from your Ruby programs, first create a new document and then get
its HTML representation with the method `to_html`:

    doc = Maruku.new(markdown_string)
    puts doc.to_html

The `#to_html` method returns a string,
representing an HTML fragment.

    Maruku.new("## Header ##").to_html
    # => "<h2 id='header'>header</h2>"

If you want to create full HTML documents, use the `#to_html_document` method.

### Error Management

Maruku warns you if something is wrong with the input.
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

    $ maruku file.md  # creates file.html

`marutex` converts Markdown to LaTeX,
then calls `pdflatex` to transform the LaTeX to a PDF:

    $ marutex file.md  # creates file.tex and file.pdf

## Code organization

The public interface is the `Maruku` class.
Everything else is in the module `MaRuKu`.

## Dependencies

Maruku will not depend on any gem that is not pure-Ruby. This helps maximize compatibility across Ruby implementations and make Maruku easy to use. Beyond that, Maruku should not depend on any other gem unless absolutely necessary - this make Maruku easy to consume and avoids dependency version conflicts.

## Versioning

Maruku follows [Semantic Versioning](http://semver.org/) for release versioning, starting around version 0.6.0. One caveat is that, because even the most minor bug fixes are likely to change the output of some documents, some of the patch-level changesare not strictly backwards compatible. This usually shows up as test breakages, and one suggestion is to use a tool like [nokogiri-diff](https://github.com/postmodern/nokogiri-diff) to compare output to the expected structure as XML rather than simply comparing strings.

## Supported Ruby Versions

This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1.0
* JRuby (Travis' version, 1.8 and 1.9 modes)
* Rubinius (Travis' version)

If something doesn't work on one of these interpreters, it's a bug.

## Contributing

* Find something you would like to work on.
  * Look for anything you can help with in the [issue tracker](https://github.com/bhollis/maruku/issues).
  * Look at the [code quality metrics](https://codeclimate.com/github/bhollis/maruku) or [code coverage report](https://coveralls.io/r/bhollis/maruku) for anything you can help clean up or add tests for.
  * Or anything else!
* Fork the project and do your work in a topic branch.
  * Make sure your changes will work on all the Rubies we test on.
* Add tests in `spec/block_docs` for the behavior you want to test.
* Run all the tests using `bundle exec rake`.
* Rebase your branch against `bhollis/maruku` to make sure everything is up to date.
* Commit your changes and send a pull request.

## License

Copyright (c) 2006 Andrea Censi. MIT license, see [MIT-LICENSE.txt] for details.

[MIT-LICENSE.txt]: https://github.com/bhollis/maruku/blob/master/MIT-LICENSE.txt
[travis]: http://travis-ci.org/bhollis/maruku
