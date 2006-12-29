
class Maruku

# this class helps me read and sanitize code blocks

	class HTMLHelper
		Tag = %r{^<(/)?(\w+)([^>]*)>}m
		EverythingElse = %r{^[^<]+}m
		CommentStart = %r{^<!--}x
		CommentEnd = %r{^.*-->}
		TO_SANITIZE = ['img','hr'] 
		
		attr_accessor :inside_comment
		
		def initialize 
			@rest = ""
			@tag_stack = []
			@m = nil
			@already = ""
			@inside_comment = false
		end
		
		def eat_this(line)
			@rest = line + "\n" + @rest
			
			until @rest.empty?
				if @inside_comment
					if @m = CommentEnd.match(@rest)
						@inside_comment = false
						@already += @m.pre_match + @m.to_s
						@rest = @m.post_match
					elsif @m = EverythingElse.match(@rest)
						@already += @m.pre_match + @m.to_s
						@rest = @m.post_match
					end
				else
					if @m = CommentStart.match(@rest)
						@inside_comment = true
						@already += @m.pre_match + @m.to_s
						@rest = @m.post_match
					elsif @m = Tag.match(@rest)
						@already += @m.pre_match
						@rest = @m.post_match
					
						is_closing = !!@m[1]
						tag = @m[2]
						attributes = @m[3]
						
						is_single = false
						if attributes =~ /\A(.*)\/\Z/
							attributes = $1
							is_single = true
						end
					
						if TO_SANITIZE.include? tag 
							@already +=  '<%s %s />' % [tag, attributes]
						elsif is_closing
							@already += @m.to_s
							if @tag_stack.last != tag
								error "Malformed: tag <#{tag}> "+
								      "closes <#{@tag_stack.last}>"
							end
							if @tag_stack.empty?
								error "Malformed: closing tag #{tag.inspect} "+
								      "in empty list"
							end 
							@tag_stack.pop
						elsif not is_single
							@tag_stack.push tag
							@already += @m.to_s
						end
					elsif @m = EverythingElse.match(@rest)
						@already += @m.pre_match + @m.to_s
						@rest = @m.post_match
					else
#						puts "No match??? #{@rest.inspect}"
					end
				end # not inside comment
				
#				puts inspect
#				puts "Read: #{@tag_stack.inspect}"
			end
		end


		def error(s)
			raise "Error: #{s} "+ inspect
		end

		def inspect; "HTML READER\n comment=#{inside_comment} "+
			"match=#{@m.to_s.inspect}"+
			"\n * * * BEFORE * * *\n#{@already.inspect}"+
			"\n * * * AFTER  * * *\n#{@rest.inspect}"+
			"\n * * * TAGS stack * * *\n#{@tag_stack.inspect}"
		end
		def stuff_you_read
			@already
		end
		def is_finished?
			not @inside_comment and @tag_stack.empty?
		end
	end
end