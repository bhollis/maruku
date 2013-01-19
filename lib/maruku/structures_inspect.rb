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


module MaRuKu
  class MDElement
    INSPECT2_FORMS = {
      :paragraph          => ["par",      :children],
      :footnote_reference => ["foot_ref", :footnote_id],
      :entity             => ["entity",   :entity_name],
      :email_address      => ["email",    :email],
      :inline_code        => ["code",     :raw_code],
      :raw_html           => ["html",     :raw_html],
      :emphasis           => ["em",       :children],
      :strong             => ["strong",   :children],
      :immediate_link     => ["url",      :url],
      :image              => ["image",    :children, :ref_id],
      :im_image           => ["im_image", :children, :url, :title],
      :link               => ["link",     :children, :ref_id],
      :im_link            => ["im_link",  :children, :url, :title],
      :ref_definition     => ["ref_def",  :ref_id, :url, :title],
      :ial                => ["ial",      :ial],
      :li                 => ["li",       :children, :want_my_paragraph]
    }

    def inspect(compact = true)
      if compact
        i2 = inspect2
        return i2 if i2
      end

      params = [
                self.node_type.inspect,
                children_inspect(compact)
               ]

      params << @meta_priv.inspect unless @meta_priv.empty?
      params << self.al.inspect unless self.al.empty?

      "md_el(#{params.join(', ')})"
    end

    # Outputs the abbreviated form of an element
    # (this should be `eval`-able to get a copy of the original element).
    def inspect2
      name, *params = INSPECT2_FORMS[@node_type]
      return nil unless name

      params = params.map do |p|
        next children_inspect if p == :children
        send(p).inspect
      end
      params << @al.inspect if @al && !@al.empty?

      "md_#{name}(#{params.join(', ')})"
    end

    def children_inspect(compact=true)
      kids = @children.map {|x| x.is_a?(MDElement) ? x.inspect(compact) : x.inspect}
      return kids.first if kids.size == 1

      comma = kids.join(", ")

      if comma.size < 70
        "[#{comma}]"
      else
        "[\n\t#{kids.join(",\n\t")}\n]"
      end
    end
  end
end
