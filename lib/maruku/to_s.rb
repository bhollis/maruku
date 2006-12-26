

class MDElement
	
	# Strips all formatting from the string
	def to_s
		 children_to_s
	end
	
	def children_to_s
		@children.join
	end
	
	# Generate an id for headers. Assumes @children is set.
	def generate_id
		title = children_to_s
		title.gsub!(/ /,'_')
		title.downcase!
		title.gsub!(/[^\w_]/,'')
		title
	end
end