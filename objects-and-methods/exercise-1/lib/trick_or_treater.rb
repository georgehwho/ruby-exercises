class TrickOrTreater
  attr_reader :bag

  def initialize(c)
    @costume = c
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !bag.empty
  end

  def candy_count
    bag.count
  end

  def eat
    bag.candies.pop
    bag.count -= 1
    bag.empty = true if bag.count == 0  
  end
end
