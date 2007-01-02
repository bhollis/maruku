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
# Instead I opted to have only the class "MDElement"
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
	attr_accessor :node_type
	# Children are either Strings or MDElement
	attr_accessor :children
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
	
	def inspect(compact=true)
		if compact
			i2 = inspect2
			return i2 if i2
		end
		
		"md_el(:%s,%s %s)" %
		[
			@node_type,
			children_inspect(compact), 
			if @meta.size>0 then 
				', '+@meta.inspect 
			else '' end
		]
	end

	def children_inspect(compact=true)
		s = @children.inspect_more(compact,', ')
		if @children.empty?
			"[]"
		elsif s.size < 70
			s
		else
			"[\n"+
			add_tabs(@children.inspect_more(compact,",\n ",false))+
			"\n]"
		end
	end
	
end

class String
	alias inspect_more inspect
end

class Array
	def inspect_more(compact, join_string, add_brackets=true)
		s  = map {|x| 
			x.kind_of?(String) ? x.inspect : 
			x.kind_of?(MDElement) ? x.inspect(compact) : 
			(raise "WTF #{x.class} #{x.inspect}")
		}.join(join_string)
		
		add_brackets ? "[#{s}]" : s
	end
end
# The Maruku class represent the whole document 
# and holds global data.

class Maruku < MDElement
	attr_accessor :refs
	attr_accessor :footnotes
	attr_accessor :abbreviations
end
