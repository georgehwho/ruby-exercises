class Dragon
  attr_accessor :name, :color, :rider, :hunger

  def initialize(n, c, r)
    @name = n
    @color = c
    @rider = r
    @hunger = {state: true, meter: 0}
  end

  def hungry?
    self.hunger[:state]
  end

  def eat
    if self.hunger[:meter] < 2
      self.hunger[:meter] += 1
      return self.hunger[:state]
    else
      self.hunger[:state] = false
      return self.hunger[:state]
    end
  end
end
