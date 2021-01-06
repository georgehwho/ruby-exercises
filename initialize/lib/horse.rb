class Horse
  attr_accessor :name, :diet

  def initialize(n)
    self.name = n
    self.diet = []
  end

  def add_to_diet(f)
    self.diet << f
  end
end 
