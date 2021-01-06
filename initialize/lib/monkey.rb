class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(a)
    @name = a[0]
    @type = a[1]
    @favorite_food = a[2]
  end
end 
