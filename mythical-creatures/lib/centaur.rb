class Centaur
  attr_reader :name, :breed
  attr_accessor :cranky, :standing

  def initialize(n, b)
    @name = n
    @breed = b
    @cranky = 0
    @standing = true
  end

  def shoot
    if self.cranky? || self.laying?
      # self.cranky += 1
      # "Twang!!!"
      "NO!"
    else
      # "NO!"
      self.cranky += 1
      "Twang!!!"
    end
  end

  def run
    if self.cranky? || self.laying?
      "NO!"
    else
      self.cranky += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if self.cranky < 3
      false
    else
      true
    end
  end

  def standing?
    self.standing
  end

  def laying?
    return true if self.standing == false
    false
  end

  def lay_down
    self.standing = false
  end

  def stand_up
    self.standing = true
  end

  def sleep
    if standing?
      "NO!"
    else
      self.cranky = 0
    end
  end

  def drink_a_potion
    if self.standing && self.cranky > 0
      self.cranky = 0
    elsif self.standing
      "sick"
    else
      "can't drink while laying"
    end
  end 

end
