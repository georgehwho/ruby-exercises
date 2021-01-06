class Vampire
  attr_accessor :name, :pet, :thirsty

  def initialize(n, p = "bat")
    @name = n
    @pet = p
    @thirsty = true
  end

  def drink
    self.thirsty = false
  end

  def thirsty?
    self.thirsty
  end
end
