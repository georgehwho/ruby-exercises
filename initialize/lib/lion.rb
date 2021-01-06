class Lion
  attr_reader :name, :sound

  def initialize(h)
    @name = h[:name]
    @sound = h[:sound]
  end
end
