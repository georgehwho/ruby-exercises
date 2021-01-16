require 'date'

class Time
  attr_reader :date

  def initialize(y, m, d, h, min = 0)
    @date = DateTime.new(y, m, d, h, min)
  end

end
