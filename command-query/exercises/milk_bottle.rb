class MilkBottle
  def initialize
    @is_full = true
  end

  def full?
    @is_full
  end

  def spill
    @is_full = false
  end
end
