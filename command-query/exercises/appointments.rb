# require 'date'

class Appointments
  attr_reader :earliest

  def initialize
    @earliest = nil
  end

  def at(time)
    if self.earliest == nil
      @earliest = time
    elsif self.earliest.to_time.to_f > time.to_time.to_f
      @earliest = time
    else
    end
  end

end
