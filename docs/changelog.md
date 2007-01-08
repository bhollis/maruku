
#### Changes in 0.4.1 aka "Typographer" ####

*	Implemented SmartyPants support:

		'Twas a "test" to 'remember' -- in the '90s 
		--- while I was <<ok>>. She was 6\"12\'.
	> 'Twas a "test" to 'remember' -- in the '90s --- while I was <<ok>>.
	> She was 6\"12\'.

	I adapted the code from RubyPants.
	
*	Server directives between `<? ?>` are properly preserved.
*	Changes in LaTeX export:

	*	Now Japanese text rendering sort of works, using the following packages:

			\usepackage[C40]{fontenc}
			\usepackage[cjkjis]{ucs}
			\usepackage[utf8x]{inputenc}
		
		Nevertheless, I could only get bitmap fonts working -- probably it's a problem
		with my setup.

		A quick test: 日本、中国、ひらがな、カタカナ。

	*	Fixed bugs in rendering of immediate links.
	*	External packages are `require`d only if needed.
	*	More symbols supported.
		See the symbol list 
		[in HTML](http://maruku.rubyforge.org/entity_test.html) and
		[in PDF](http://maruku.rubyforge.org/entity_test.pdf).


#### Changes in 0.4 ####

* First implementation of [the new meta-data syntax][meta].
* General refactorization of the code and much cleaner error reporting.
* Created [the RDOC documentation][rdoc].
* The `add_whitespace` method took too much time -- it was O(n^2).
* Added unit-tests for block-level elements.

[rdoc]: http://maruku.rubyforge.org/rdoc/
[meta]: http://maruku.rubyforge.org/proposal.html

#### Changes in 0.3 ####

*	A real parser is used instead of a regexp-based system, also for span-level 
	elements.

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

#### Changes in 0.2.13 ####

- better handling of inline HTML code.
- Handle HTML comments.
- Sanitizes HR and IMG tags if you don't close them.
- documentation included in HTML format