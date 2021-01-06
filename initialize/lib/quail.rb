class Quail
  attr_accessor :name

  def initialize(n)
    @name = n.capitalize
  end

  def self
    self.class
  end
end 
