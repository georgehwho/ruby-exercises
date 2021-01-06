class Pirate
  attr_accessor :name, :job, :heinous_acts, :booty

  def initialize(n, j = "Scallywag")
    @name = n
    @job = j
    @heinous_acts = 0
    @booty = 0
  end

  def cursed?
    return true if self.heinous_acts <= 2
    false
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def raid
    @booty += 100
  end
  
end
