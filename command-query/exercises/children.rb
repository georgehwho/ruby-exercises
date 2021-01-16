class Children
  attr_reader :eldest

  def initialize
    @eldest = nil
    @family = []
  end

  def <<(child)
    @family << child
    if self.eldest == nil
      @eldest = child
    elsif self.eldest.age < child.age
      @eldest = child
    else
    end
  end
end
