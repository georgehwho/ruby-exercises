class Narwhal
  attr_accessor :cute, :weight, :name

  def initialize(h)
    self.cute = h[:cute]
    self.weight = h[:weight]
    self.name = h[:name]
  end

  def cute?
    self.cute
  end
end
