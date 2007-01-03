class String
	# XXX: markdown escaping
	def to_md(c=nil)
		to_s
	end
	
	# " andrea censi " => [" andrea ", "censi "]
	def mysplit
		split.map{|x| x+" "}
	end
end


class MDElement
	
	DefaultLineLength = 50
	
	def to_md(context={})
		children_to_md(context)
	end
	
	def to_md_paragraph(context)
		line_length = context[:line_length] || DefaultLineLength
		wrap(@children, line_length)
	end
	
	def to_md_li_span(context)
		len = (context[:line_length] || DefaultLineLength) - 2
		s = add_tabs(wrap(@children, len-2), 1, '  ')
		s[0] = ?*
		s + "\n"
	end
end

# Some utilities
class MDElement
	
	# Convert each child to html
	def children_to_md(context)
		array_to_md(@children, context)
	end
	
	def wrap(array, line_length)
		out = ""
		line = ""
		array.each do |c|
			if c.kind_of?(MDElement) &&  c.node_type == :linebreak
				out << line.strip << "  \n"; line="";
				next
			end
		
			pieces =
			if c.kind_of? String
				c.to_md.mysplit
			else
				[c.to_md].flatten
			end
		
	#			puts "Pieces: #{pieces.inspect}"
			pieces.each do |p|
				if p.size + line.size > line_length
					out << line.strip << "\n"; 
					line = ""
				end
				line << p
			end
		end
		out << line.strip << "\n" if line.size > 0
		out
	end


	def array_to_md(array, context, join_char='')
		e = []
		array.each do |c|
			method = c.kind_of?(MDElement) ? 
			   "to_md_#{c.node_type}" : "to_md"
			
			if not c.respond_to?(method)
				#raise "Object does not answer to #{method}: #{c.class} #{c.inspect[0,100]}"
				tell_user "Using default for #{c.node_type}"
				method = 'to_md'
			end
			
#			puts "#{c.inspect} created with method #{method}"
			h =  c.send(method, context)
			
			if h.nil?
				raise "Nil md for #{c.inspect} created with method #{method}"
			end
			
			if h.kind_of?Array
				e = e + h
			else
				e << h
			end
		end
		e.join(join_char)
	end
	
end

class Maruku
	alias old_md to_md
	def to_md(context={})
		s = old_md(context)
#		puts s
		s
	end	
end