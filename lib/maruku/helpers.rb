

# A series of helper functions for creating elements

module Helpers

	def md_code(code)
		md_el(:inline_code, [], {:raw_code => code})
	end
	
	def md_el(node_type, children=[], meta={})
		e=MDElement.new(node_type, children, meta)
		e.doc = self
		e
	end
	
	def md_html(html)
		md_el(:raw_html, [], {:raw_html=>html})
	end
		
	def md_link(children, ref_id)
		md_el(:link, children, {:ref_id=>ref_id})
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
	
end