module MaRuKu; module In; module Markdown


	# Hash Fixnum -> name
	SpanExtensionsTrigger = {}
	
	
	class SpanExtension
		# trigging chars
		attr_accessor :chars
		# trigging regexp
		attr_accessor :regexp
		# lambda
		attr_accessor :block
	end
	
	# Hash String -> Extension
	SpanExtensions = {}

	def check_span_extensions(src, con)
		c = src.cur_char
		if extensions = SpanExtensionsTrigger[c]
			extensions.each do |e|
				if e.regexp && src.next_matches(e.regexp)
					return true if e.block.call(doc, src, con)
				end
			end
		end
		return false # not special
	end
	
	def self.register_span_extension(args, &block)
		e = SpanExtension.new
		e.chars = [*args[:chars]]
		e.regexp = args[:regexp]
		e.block = block
		e.chars.each do |c|
			(SpanExtensionsTrigger[c] ||= []).push e
		end
	end

	def self.register_block_extension(args, &block)
		
	end

end end end


require 'maruku/input/extensions/latex_math'

