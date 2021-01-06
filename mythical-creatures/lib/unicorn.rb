class Unicorn
  attr_accessor :name, :color

  def initialize(n, c = "white")
    @name = n
    @color = c
  end

  def white?
    return true if self.color == "white"
    false
  end

  def say(m)
    "**;* #{m} **;*"
  end
end
