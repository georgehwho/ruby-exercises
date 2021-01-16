class Music
  def initialize
    @is_loud = false
  end

  def loud?
    @is_loud
  end

  def turn_up
    @is_loud = true
  end

end
