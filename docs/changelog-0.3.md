css: style.css

Release notes - version 0.3.0 (January 3rd, 2007)
-------------------------------------------------

Note: Maruku seems to be very robust, nevertheless it is still beta-level
software. So if you want to use it in production environments, please 
check back in a month or so, while we squash the remaining bugs.

In the meantime, feel free to toy around, and please signal problems,
request features, by [contacting me][contact] or using the [tracker][tracker]. 
For issues about the Markdown syntax itself and improvements to it, 
please write to the [Markdown-discuss mailing list][markdown-discuss].

Have fun!

Changes in 0.3.0:

*	A real parser is used instead of a regexp-based system, also for span-level 
	elements..

	Now Maruku is almost 2x faster than Bluecloth, while having more features.

	Here are some benchmarks:
	
		BlueCloth (to_html): parsing 0.00 sec + rendering 1.54 sec = 1.55 sec 
		Maruku (to_html):    parsing 0.47 sec + rendering 0.38 sec = 0.85 sec 
		Maruku (to_latex):   parsing 0.49 sec + rendering 0.25 sec = 0.73 sec
		
	This is the result of running `lib/maruku/tests/benchmark.rb` on the Markdown 
	specification.

*	Prettier HTML output by adding whitespace.
 
*	Added a full suite of unit-tests for the span-level parser.

*	Error management: Having a real parser, Maruku warns you about syntax issues.
	
	The default action is to warn and try to continue. If you do this:

		Maruku.new(string, {:on_error => :raise})

	then syntax errors will cause an exception to be raised (you can catch this
	and retry).

*	Fixed a series of bugs in handling inline HTML code.

Immediate TODO-list:

*	UTF-8 input/output works OK for HTML, however I am having pain trying to export
	to LaTeX. I want at least Japanese characters support, so if you know how to 
	do this you are very welcome to give me an hand.
	
	For example: in the HTML version, you should see accented characters in this
	parenthesis: 
	
	> (àèìòù)
	
	and Japanese text in these other parentheses: 
	
	> (カタカナで 私の 名前は アンドレア チェンシ です).
	>
	> (日本のガルは 大好き、でも、日本語は難しですから、そうぞ 英語話すガルを おしえてください).
	
	In the LaTeX version, these do not appear. I know how to do LaTeX with 
	ISO-8859-1 encoding (European characters), but I'm struggling with half-baked 
	solutions for UTF-8 encoded documents.

*	Implement the [new meta-data proposal][proposal].

*	Exporting to Markdown (pretty printing).

*	Exporting to HTML splitting in multiple files.

*	RubyPants.

*	Support for images in PDF.


[proposal]: http://maruku.rubyforge.org/
[contact]: http://www.dis.uniroma1.it/~acensi/contact.html
[markdown-discuss]: http://six.pairlist.net/mailman/listinfo/markdown-discuss
[tracker]: http://rubyforge.org/tracker/?group_id=2795

