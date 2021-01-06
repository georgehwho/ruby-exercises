class Ogre
  attr_reader :name, :home, :encounter_counter, :swings

  def initialize(n, h = 'Swamp')
    @name = n
    @home = h
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.increment_encounter
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(hu)
    @swings += 1
    hu.rocked if swings % 2 == 0
  end

  def apologize(hu)
    hu.rev
  end
end

class Human
  attr_reader :name, :encounter_counter, :knocked_out

  def initialize(n = 'Jane')
    @name = n
    @encounter_counter = 0
    @knocked_out = false
  end

  def increment_encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    self.encounter_counter % 3 == 0
  end

  def knocked_out?
    @knocked_out
  end

  def rocked
    @knocked_out = true
  end

  def rev
    @knocked_out = false
  end

end
