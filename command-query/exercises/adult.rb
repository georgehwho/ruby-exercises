class Adult
  def initialize
    @sober = true
    @consumed_beverages = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @consumed_beverages += 1
    @sober = false if @consumed_beverages > 2
  end
  
end
