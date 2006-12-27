# I did not want to have a class for each possible element. 
# Instead I opted to have the class "MDElement"
# that represents eveything in the document (paragraphs, headers, etc).
#
# You can tell what it is by the variable `node_type`. 
#
# In the instance-variable `children` there are the children. These
# can be of class 1) String or 2) MDElement. 
#
# The @doc variable points to the document to which the MDElement
# belongs (which is an instance of Maruku, subclass of MDElement).
#
# Meta data is specified the hash `meta`. Keys are symbols (downcased, with
# spaces substituted by underscores)
#
# For example, if you write in the source document.
# 
#     Title: test document
#     My property: value
#     
#     content content
#
# You can access `value` by writing:
#
#     @doc.meta[:my_property] # => 'value'
#
# from whichever MDElement.

class MDElement 
	# XXX List not complete
	# Allowed: :document, :paragraph, :ul, :ol, :li, 
	# :li_span, :strong, :emphasis, :link, :email
	attr_accessor :node_type
	# Children are either Strings or MDElement
	attr_accessor :children
	# Hash for metadata
	# contains :id for :link1
	# :li :want_my_paragraph
	#  :header: :level
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
	
	# This represents a section in the TOC.
	class Section
		# a Fixnum, is == header_element.meta[:level]
		attr_accessor :section_level 
		
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
