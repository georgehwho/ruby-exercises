class Item
  attr_reader :name, :price, :discount, :huh

  def initialize(n, s)
    @name = n
    @huh = s
  end

  def diff
    @huh[:price] - @huh[:discount]
  end
end
