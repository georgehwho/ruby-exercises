class Parrot
  attr_accessor :name, :known_words

  def initialize(h)
    @name = h[:name]
    @known_words = h[:known_words]
  end

  def sound
    "Squawk!"
  end
end
