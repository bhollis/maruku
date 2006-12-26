
class MDElement 
	# Allowed: :document, :paragraph, :ul, :ol, :li, :li_span, :strong, :emphasis, :link
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

# The Maruku class represent the whole document 
# and holds global data.

class Maruku < MDElement
	attr_accessor :refs
	attr_accessor :footnotes
	attr_accessor :abbreviations
	# an instance of Section (see below)
	attr_accessor :toc 
end

class MDElement
	class Section
		attr_accessor :section_level # a Fixnum, is == header_element.meta[:level]
		
		# An array of fixnum, like [1,2,5] for Section 1.2.5
		attr_accessor :section_number 
		
		# reference to header (header has h.meta[:section] to self)
		attr_accessor :header_element

		# Array of immediate children of this element
		attr_accessor :immediate_children
		# Array of Section inside this section
		attr_accessor :section_children
		
		
		def initialize
			@immediate_children = []
			@section_children = []
		end
	end 
end
