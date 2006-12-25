
class MDElement 
	# Allowed: :document, :paragraph, :ul, :ol, :li, :li_span, :strong, :emphasis, :link1
	attr_accessor :node_type
	# Children are either Strings or MDElement
	attr_accessor :children
	# Hash for metadata
	# contains :id for :link1
	# :li :want_my_paragraph
	# :header: :level
	# code, inline_code: :raw_code
	attr_accessor :meta
	# reference of containing document (document has list of ref)
	attr_accessor :doc
	
	def initialize
		super(); 
		@children = []; 
		@node_type = :unset
		@meta = {};
	end
	
end

# The Maruku class holds static data for the document

class Maruku < MDElement
	attr_accessor :refs
	attr_accessor :footnotes
	attr_accessor :abbreviations
end
