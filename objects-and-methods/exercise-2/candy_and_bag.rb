class Candy
  attr_reader :type, :sugar

  def initialize(t, s = 100)
    @type = t
    @sugar = s
  end
end
class Bag
  attr_reader :count, :candies

  def initialize()
    @empty = true
    @count = 0
    @candies = []
  end

  def empty?
    @empty
  end

end
