class Catalogue
  attr_reader :catalogue

  def initialize
    @catalogue = []
  end

  def cheapest
    if self.catalogue.empty?
      nil
    else
      @catalogue.sort_by {|product| product.price }.first.name
    end
  end

  def <<(product)
    @catalogue << product
  end
end
