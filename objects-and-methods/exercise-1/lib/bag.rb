class Bag
  attr_reader :candies
  attr_accessor :count, :empty

  def initialize(c = [])
    @candies = c
    @empty = true
    @count = 0
  end

  def empty?
    @empty
  end

  def <<(c)
    @candies << c
    @empty = false
    @count += 1
  end

  def contains?(c)
    @candies.each do |candy|
      if candy.type == c
        return true
        break
      end
    end
    false
  end
end
