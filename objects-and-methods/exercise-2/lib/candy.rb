class Candy
  attr_reader :type, :sugar

  def initialize(t, s = 100)
    @type = t
    @sugar = s
  end
end
