
module MaRuKu

class MDElement
	
	# Yields to each element of specified node_type
	# All elements if e_node_type is nil.
	def each_element(e_node_type=nil, &block) 
		@children.each do |c| 
			if c.kind_of? MDElement
				if (not e_node_type) || (e_node_type == c.node_type)
					block.call c
				end
				c.each_element(e_node_type, &block)
			end
		end
	end
	
	# Apply passed block to each String in the hierarchy.
	def replace_each_string(&block)
		for c in @children
			if c.kind_of? MDElement
				c.replace_each_string(&block)
			end
		end

		processed = []
		until @children.empty?
			c = @children.shift
			if c.kind_of? String
				result = block.call(c)
				[*result].each do |e| processed << e end
			else
				processed << c
			end
		end
		@children = processed
	end

end
end