class TrickOrTreater
  attr_reader :sugar_level

  def initialize(c)
    @costume = c
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    @sugar_level += @bag.candies.last.sugar
    @bag.take(1)
  end
end
