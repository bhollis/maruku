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


module MaRuKu
class MDElement	
	def inspect(compact=true)
		if compact
			i2 = inspect2
			return i2 if i2
		end
		
		"md_el(:%s,%s,%s,%s)" %
		[
			self.node_type,
			children_inspect(compact), 
			@meta_priv.inspect,
			self.al.inspect
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
			add_tabs(@children.inspect_more(compact,",\n",false))+
			"\n]"
		end
	end
	
end

end

