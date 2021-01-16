class Light
  def initialize
    @is_on = false
  end

  def on?
    @is_on
  end

  def turn_on
    @is_on = true
  end
end
