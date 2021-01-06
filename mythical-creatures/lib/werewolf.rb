class Werewolf
  attr_reader :name, :location, :human, :hunger, :victims

  def initialize(n, l = "")
    @name = n
    @location = l
    @human = true
    @hunger = false
    @victims = []
  end

  def human?
    self.human
  end

  def change!
    if self.human == true
      @human = false
      @hunger = true
      self.human
    else
      @human = true
      self.human
    end
  end

  def wolf?
    return true if self.human == false
    false
  end

  def hungry?
    self.hunger
  end

  def consume(v)
    if self.human == false
      @victims << v
      v.status = :dead
      @hunger = false
      'yummy'
    else
      'ur a human!'
    end
  end
end
