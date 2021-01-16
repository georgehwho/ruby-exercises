class Kid
  attr_reader :grams_of_sugar_eaten

  def initialize
    @grams_of_sugar_eaten = 0
    @is_hyperactive = false
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
    @is_hyperactive = true if self.grams_of_sugar_eaten >= 60
  end

  def hyperactive?
    @is_hyperactive
  end
end
