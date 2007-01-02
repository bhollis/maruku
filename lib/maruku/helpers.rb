

# A series of helper functions for creating elements

module Helpers

	def md_el(node_type, children=[], meta={})
		e=MDElement.new(node_type, children, meta)
		e.doc = self
		e
	end

	def md_code(code)
		md_el(:inline_code, [], {:raw_code => code})
	end

	def md_par(children, meta={})
		md_el(:paragraph, [], meta)
	end
	
	def md_html(raw_html)
		e = md_el(:raw_html, [], {:raw_html=>raw_html})
		begin
			# remove newlines and whitespace at begin
			# end end of string, or else REXML gets confused
			raw_html = raw_html.gsub(/\A\s*</,'<').
			                    gsub(/>[\s\n]*\Z/,'>')
			e.instance_variable_set :@parsed_html,
			 	REXML::Document.new(raw_html)
		
		rescue Exception => ex
			tell_user "Malformed block of HTML:\n"+
			add_tabs(raw_html,1,'|')
#			"  #{raw_html.inspect}\n\n"+ex.inspect
		end
		e
	end
		
	def md_link(children, ref_id)
		md_el(:link, children, {:ref_id=>ref_id.downcase})
	end
	
	def md_im_link(children, url, title=nil)
		md_el(:link, children, {:url=>url,:title=>title})
	end
	
	
	def md_image(children, ref_id)
		md_el(:image, children, {:ref_id=>ref_id})
	end
	
	def md_im_image(children, url, title=nil)
		md_el(:image, children, {:url=>url,:title=>title})
	end

	def md_em(children)
		md_el(:emphasis, [children].flatten)
	end

	def md_strong(children)
		md_el(:strong, [children].flatten)
	end

	def md_emstrong(children)
		md_strong(md_em(children))
	end

	# <http://www.example.com/>
	def md_url(url)
		md_el(:immediate_link, [], {:url=>url})
	end
	
	# <andrea@rubyforge.org>
	# <mailto:andrea@rubyforge.org>
	def md_email(email)
		md_el(:email_address, [], {:email=>email})
	end
	
	def md_entity(entity_name)
		md_el(:entity, [], {:entity_name=>entity_name})
	end
	
	# Markdown extra
	def md_foot_ref(ref_id)
		md_el(:footnote_reference, [], {:footnote_id=>ref_id})
	end
	
	def md_par(children, meta={})
		md_el(:paragraph, children, meta)
	end

	# [1]: http://url [properties]
	def md_ref_def(ref_id, url, title=nil, meta={})
		meta[:url] = url
		meta[:ref_id] = ref_id
		meta[:title] = title if title
		md_el(:ref_definition, [], meta)
	end
end

class MDElement	
	# outputs abbreviated form 
	def inspect2 
		case @node_type
		when :paragraph
			"md_par(%s)" % children_inspect
		when :footnote_reference
			"md_foot_ref(%s)" % @meta[:footnote_id].inspect
		when :entity
			"md_entity(%s)" % @meta[:entity_name].inspect
		when :email_address
			"md_email(%s)" % @meta[:email].inspect
		when :inline_code
			"md_code(%s)" % @meta[:raw_code].inspect
		when :raw_html
			"md_html(%s)" % @meta[:raw_html].inspect
		when :emphasis 
			"md_em(%s)" % children_inspect
		when :strong
			"md_strong(%s)" % children_inspect
		when :immediate_link
			"md_url(%s)" % @meta[:url].inspect
		when :image
			if @meta[:ref_id]
				"md_image(%s,%s)" % [
					children_inspect, @meta[:ref_id].inspect]
			else
				"md_im_image(%s, %s %s)" % [
					children_inspect, @meta[:url].inspect,
					(title=@meta[:title]) ? (", "+ title.inspect) : ""
				]
			end
		when :link
			if @meta[:ref_id]
				"md_link(%s,%s)" % [
					children_inspect, @meta[:ref_id].inspect]
			else
				"md_im_link(%s, %s %s)" % [
					children_inspect, @meta[:url].inspect,
					(title=@meta[:title]) ? (", "+ title.inspect) : ""
				]
			end
		when :ref_definition
			"md_ref_def(%s, %s %s)" % 
				[
					@meta[:ref_id].inspect, 
					@meta[:url].inspect,
					@meta[:title] ? ","+@meta[:title].inspect : ""
				]
		else
			nil
		end
	end
	
end









