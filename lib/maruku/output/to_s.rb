#--
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
#++


module MaRuKu
	
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
		title.gsub!(/\W/,'')
		title.strip!
		
		if title.size == 0
			$uid ||= 0
			$uid += 1
			title = "id#{$uid}"
		end

		@doc.id_counter += 1
		title << "_" + @doc.id_counter.to_s
	end
end

end
