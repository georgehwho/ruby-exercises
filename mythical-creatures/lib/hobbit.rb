class Hobbit
  attr_accessor :name, :disposition, :age, :ring

  def initialize(n, d = "homebody", a = 0, r = false)
    self.name = n
    self.disposition = d
    self.age = a
    self.ring = r
  end

  def celebrate_birthday
    self.age += 1
  end

  def adult?
    return true if self.age > 32
    false
  end

  def old?
    return true if self.age > 100
    false
  end

  def has_ring?
    if self.name == "Frodo"
      self.ring = true
      return self.ring
    else
      return self.ring
    end
  end

  def is_short?
    true
  end
  
end
