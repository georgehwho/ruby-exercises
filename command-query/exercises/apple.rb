class Apple
  def initialize
    @is_ripe = false
    @week = 0
  end

  def ripe?
    @is_ripe
  end

  def wait_a_week
    @week += 1
    @is_ripe = true if @week > 2
  end 
end
