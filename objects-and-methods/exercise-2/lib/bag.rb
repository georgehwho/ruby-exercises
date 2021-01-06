class Bag
  attr_reader :count, :candies

  def initialize()
    @empty = true
    @count = 0
    @candies = []
    @removed = []
  end

  def empty?
    @empty
  end

  def <<(c)
    @candies << c
    @empty = false
    @count += 1
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(type)
    @count -= 1
    @candies.find do |candy|
      candy.type == type
    end
  end

  def take(num)
    num.times do |n|
      @count -= 1
      @removed << @candies.pop
      @empty = true if @count == 0
    end
    @removed
  end
end
