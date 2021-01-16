class Dog
  def initialize
    @is_hungry = true
  end

  def hungry?
    @is_hungry
  end

  def eat
    @is_hungry = false
  end
end 
