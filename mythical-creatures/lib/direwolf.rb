class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect, :is_hunting_ww

  def initialize(n, h = 'Beyond the Wall', s = 'Massive')
    @name = n
    @home = h
    @size = s
    @starks_to_protect = []
    @is_hunting_ww = true
  end

  def protects(stark)
    if self.home == stark.location && self.starks_to_protect.size < 2
      @starks_to_protect << stark
      @home = stark.location
      stark.protected
      self.stop_hunting
    else
    end
  end

  def hunts_white_walkers?
    self.is_hunting_ww
  end

  def stop_hunting
    @is_hunting_ww = false
  end

  def leaves(stark)
    if stark.safe?
      @starks_to_protect.delete_if { |ele| ele == stark }
      stark.unprotected
    else
      stark
    end
  end

end


class Stark
  attr_reader :name, :location, :is_safe, :house_words

  def initialize(n, l = 'Winterfell')
    @name = n
    @location = l
    @is_safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    self.is_safe
  end

  def protected
    @is_safe = true
    @house_words = 'The North Remembers'
  end

  def unprotected
    @is_safe = false
  end
end
