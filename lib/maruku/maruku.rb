# The public interface for Maruku.
#
# @example Render a document fragment
# Maruku.new("## Header ##").to_html
# # => "<h2 id='header'>header</h2>"
class Maruku < MaRuKu::MDDocument
  def initialize(s = nil, meta = {})
    super()
    self.attributes.merge! meta
    parse_doc(s) if s
  end
end
