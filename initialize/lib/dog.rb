class Dog
  attr_accessor :name, :type
  
  def initialize(n, t)
    @name = n
    @type = t
  end

  def greeting
    "Woof, I'm #{self.name} the #{self.type}!"
  end
end
