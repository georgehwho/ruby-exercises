class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(num)
    @amount += num
  end

  def spend(num)
    if self.amount > 0
      @amount -= num
    else
      "You can't spend what you don't have"
    end
  end
end
