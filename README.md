# Maruku

Maruku is a Markdown-superset interpreter.

Maruku implements:

* The original Markdown syntax.
* All the improvements in PHP Markdown Extra.
* A new meta-data syntax.

Read more about [Maruku's Markdown syntax](http://rdoc.info/github/bhollis/maruku/master/file/docs/markdown_syntax.md). It also supports [inline math](http://rdoc.info/github/bhollis/maruku/master/file/docs/math.md). [Maruku docs](http://rdoc.info/github/bhollis/maruku/master/).

News about Maruku is posted at [http://benhollis.net/blog/category/maruku/](http://benhollis.net/blog/category/maruku/)

[![Build Status](https://api.travis-ci.org/bhollis/maruku.png?branch=master)](http://travis-ci.org/bhollis/maruku)
[![Gem Version](https://fury-badge.herokuapp.com/rb/maruku.png)](http://badge.fury.io/rb/maruku)
[![Dependency Status](https://gemnasium.com/bhollis/maruku.png)](https://gemnasium.com/bhollis/maruku)
[![Code Climate](https://codeclimate.com/github/bhollis/maruku.png)](https://codeclimate.com/github/bhollis/maruku)
[![Coverage Status](https://coveralls.io/repos/bhollis/maruku/badge.png)](https://coveralls.io/r/bhollis/maruku)

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

## Ruby 1.8.7

The maintainers of this project, in concert with the maintainers of Ruby,
**strongly** recommend using the latest patchlevel of Ruby 1.9.2 or later.
[As of July 1, 2013, Ruby 1.8.7 is no longer officially maintained.][retired]
This means fixes will no longer be provided, even for known security
vulnerabilities.

[retired]: http://www.ruby-lang.org/en/news/2013/06/30/we-retire-1-8-7/

With this caveat, if you wish to bundle `maruku` into your application on Ruby
1.8.7, you must add the following line to your `Gemfile`.

    gem 'nokogiri', '~> 1.5.0'

Also, ensure that you are using LibXML version 2.8.0, since there is an
[issue with LibXML version 2.9.0][issue829] ([and 2.9.1][issue904]).

[issue829]: https://github.com/sparklemotion/nokogiri/issues/829
[issue904]: https://github.com/sparklemotion/nokogiri/issues/904

## Contributing

* Find something you would like to work on.
  * Look for anything you can help with in the [issue tracker](https://github.com/bhollis/maruku/issues).
  * Look at the [code quality metrics](https://codeclimate.com/github/bhollis/maruku) for anything you can help clean up.
  * Or anything else!
* Fork the project and do your work in a topic branch.
  * Make sure your changes will work on both Ruby 1.8.7 and Ruby 1.9
* Add tests in `spec/block_docs` for the behavior you want to test.
* Run all the tests using `bundle exec rake`.
* Rebase your branch against `bhollis/maruku` to make sure everything is up to date.
* Commit your changes and send a pull request.

## License

Copyright (c) 2006 Andrea Censi. MIT license, see [MIT-LICENSE.txt] for details.

[MIT-LICENSE.txt]: https://github.com/bhollis/maruku/blob/master/MIT-LICENSE.txt
