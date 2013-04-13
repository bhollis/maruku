module MaRuKu

  class MDElement

    # Strips all formatting from the string
    def to_s
      warn "Maruku#to_s is deprecated and will be removed or changed in a near-future version of Maruku."
      children_to_s
    end

    def children_to_s
      @children.join
    end
  end
end
