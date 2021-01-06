class Medusa
  attr_reader :name, :statues

  def initialize(n)
    @name = n
    @statues = []
  end

  def stare(v)
    if self.statues.length < 3
      self.statues << v
      v.stoned = true
    else
      self.statues.first.stoned = false
      self.statues.shift
      self.statues << v
      v.stoned = true
    end
  end

end


class Person
  attr_accessor :stoned
  attr_reader :name

  def initialize(n)
    @name = n
    @stoned = false
  end

  def stoned?
    self.stoned
  end

end
