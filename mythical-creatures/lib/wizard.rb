class Wizard
  attr_accessor :name, :beard

  def initialize(n, b = {bearded: true})
    @name = n
    @beard = b[:bearded]
    @missiles = 0
  end

  def bearded?
    @beard
  end

  def incantation(s)
    "sudo " + s
  end

  def rested?
    return true if @missiles < 3
    false
  end

  def cast
    @missiles += 1
    "MAGIC MISSILE!"
  end
end
