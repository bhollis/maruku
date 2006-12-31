#   Copyright (C) 2006  Andrea Censi  <andrea (at) rubyforge.org>
#
# This file is part of Maruku.
# 
#   Maruku is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
# 
#   Maruku is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
# 
#   You should have received a copy of the GNU General Public License
#   along with Maruku; if not, write to the Free Software
#   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#


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
# from whichever MDElement in the hierarchy.

class MDElement 
	# XXX List not complete
	# Allowed: :document, :paragraph, :ul, :ol, :li, 
	# :li_span, :strong, :emphasis, :link, :email
	attr_reader :node_type
	# Children are either Strings or MDElement
	attr_reader :children
	# Hash for metadata
	# contains :id for :link1
	# :li :want_my_paragraph
	#  :header: :level
	# code, inline_code: :raw_code
	attr_reader :meta
	# reference of containing document (document has list of ref)
	attr_accessor :doc
	
	def initialize(node_type_=:unset, children_=[], meta_={} )
		super(); 
		raise 'children is nil' if not children_
		raise 'meta is nil' if not meta_
		
		@children = children_
		@node_type = node_type_
		@meta = meta_
	end
	
	def ==(o)
		ok = o.kind_of?(MDElement) &&
		(self.node_type == o.node_type) &&
		(self.meta == o.meta) &&
		(self.children == o.children)
		ok
	end
	
	def inspect
		begin
		(@children.size<=1 ?
		"md_el(:%s,[%s]%s)" :
		"md_el(:%s,[\n%s\n]%s)") %
		[@node_type,
			add_tabs(@children.map{|x| x.inspect}.join(",\n"),1),
			if @meta.size>0 then ', '+@meta.inspect else '' end]
		rescue
			puts "@node_type: #{@node_type.inspect}"
			puts "@children: #{@children.inspect}"
			puts "@meta: #{@meta.inspect}"
			"ERROR"
			raise 'null'
		end
	end
	
	def add_tabs(s,n=1)
		s.split("\n").map{|x| "\t"*n+x }.join("\n")
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
