require 'maruku'
require 'maruku/helpers'

require 'maruku/parse_span_better'

class Maruku


	class TestNewParser
		include Helpers
			
		def do_it(verbose, break_on_first_error)
		good_cases = [
			["",       [],      'Empty string gives empty list'],
			["a",      ["a"],      'Easy char'],
			[' ',      [' '],      'One char => one string'],
			['  ',     [' '],    'Two chars => one char'],
			['a  b',   ['a b'],    'Spaces are compressed'],
			['a  b',   ['a b'],    'Newlines are spaces'],
			["a\nb",   ['a b'],    'Newlines are spaces'],
			["a\n b",  ['a b'],    'Compress newlines 1'],
			["a \nb",  ['a b'],    'Compress newlines 2'],
			[" \nb",   [' b'],    'Compress newlines 3'],
			["\nb",    [' b'],    'Compress newlines 4'],
			["b\n",    ['b '],    'Compress newlines 4'],
			["\n",     [' '],    'Compress newlines 4'],
			["\n\n\n", [' '],    'Compress newlines 4'],
			
			[nil, nil, "Should throw on nil"],
			
			# Code blocks
			["`" ,   nil,  'Unclosed single ticks'],
			["``" ,  nil,  'Unclosed double ticks'],
			["`a`" ,     [md_code('a')],    'Simple inline code 1'],
			["`\'`" ,    [md_code('\'')],   'Simple inline code 2'],
			["``a``" ,   [md_code('a')],    'Simple inline code 3'],
			["``\\'``" , [md_code('\\\'')], 'Simple inline code 4'],
			
			# Newlines 
			["a  \n", ['a',md_el(:linebreak)], 'Two spaces give br.'],
			["a \n",  ['a '], 'Newlines 2'],
			["  \n",  [md_el(:linebreak)], 'Newlines 3'],
			["  \n  \n",  [md_el(:linebreak),md_el(:linebreak)],'Newlines 3'],
			["  \na  \n",  [md_el(:linebreak),'a',md_el(:linebreak)],'Newlines 3'],
			
			# Inline HTML
			["a < b", ['a < b'], '< can be on itself'],
			["<hr>",  [md_html('<hr />')], 'HR will be sanitized'],
			["<hr/>", [md_html('<hr />')], 'Closed tag is ok'],
			["<hr  />", [md_html('<hr />')], 'Closed tag is ok 2'],
			["<hr/>a", [md_html('<hr />'),'a'], 'Closed tag is ok 2'],
			["<em></em>a", [md_html('<em></em>'),'a'], 'Inline HTML 1'],
			["<em>e</em>a", [md_html('<em>e</em>'),'a'], 'Inline HTML 2'],
			["a<em>e</em>b", ['a',md_html('<em>e</em>'),'b'], 'Inline HTML 5'],
			["<em>e</em>a<em>f</em>", 
				[md_html('<em>e</em>'),'a',md_html('<em>f</em>')], 
				'Inline HTML 3'],
			["<em>e</em><em>f</em>a", 
				[md_html('<em>e</em>'),md_html('<em>f</em>'),'a'], 
				'Inline HTML 4'],
			
			["a <b", nil, 'Bad HTML 1'],
			["<b",   nil, 'Bad HTML 2'],
			["<b!",  nil, 'Bad HTML 3'],

			# links
			["\\[a]",  ["[a]"], 'Escaping 1'],
			["\\[a\\]", ["[a]"], 'Escaping 2'],
			["[a]",   ["a"],   'Not a link'],
			["[a][]",   [ md_link('',["a"])], 'Empty link'],
			["[a\\]][]", [ md_link('',["a]"])], 'Escape inside link'],

			["[a",  nil,   'Link not closed'],
			["[a][",  nil,   'Ref not closed'],
			
		]

			@verbose = verbose
			m = Maruku.new
			good_cases.each do |input, expected, comment|
					output = nil
					begin
						output = m.parse_span_better(input)
					rescue Exception => e
						if not expected.nil?
							s = comment+"\nInput:\n  #{input.inspect}" +
							    "\nExpected:\n  #{expected.inspect}" +
								"\nOutput:\n  #{output.inspect}\n#{e.inspect}"
							print_status(comment,'CRASHED :-(',s)
							raise e if @verbose 
						else
							print_status(comment,'OK')
						end
					end
					
					if not expected.nil?
						if not (expected == output)
							s = comment+"\nInput:\n  #{input.inspect}" +
							    "\nExpected:\n  #{expected.inspect}" +
								"\nOutput:\n  #{output.inspect}"
							print_status(comment, 'FAILED', s)
							break if break_on_first_error
						else
							print_status(comment, 'OK')
						end
					else # I expected a raise
						if output
							s = comment+"\nInput:\n  #{input.inspect}" +
								"\nOutput:\n  #{output.inspect}"
							print_status(comment, 'FAILED (no throw)', s)
						end
					end
					
			end
		end
		
		PAD=40
		def print_status(comment, status, verbose_text=nil)
			if comment.size < PAD
				comment = comment + (" "*(PAD-comment.size))
			end
			puts "- #{comment} #{status}"
			if @verbose and verbose_text
				puts verbose_text
			end
		end
		
	end # class Test
end

verbose = ARGV.include? 'v'
break_on_first = ARGV.include? 'b'
Maruku::TestNewParser.new.do_it(verbose, break_on_first)


