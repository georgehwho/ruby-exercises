class Tire
  attr_reader :is_flat
  def initialize
    @is_flat = false
  end

  def flat?
    self.is_flat
  end

  def blow_out
    @is_flat = true
  end

end
