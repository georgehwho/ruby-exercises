class Wallet
  attr_reader :cents

  def initialize
    @cents = 0
    @penny = 0
    @nickel = 0
    @dime = 0
    @quarter = 0
    @dollar = 0
  end

  def <<(c)
    if c == :penny
      @cents += 1
      @penny += 1
    elsif c == :nickel
      @cents += 5
      @nickel += 1
    elsif c == :dime
      @cents += 10
      @dime += 1
    elsif c == :quarter
      @cents += 25
      @quarter += 1
    elsif c == :dollar
      @cents += 100
      @dollar += 1
    end
  end

  def take(c, c2 = nil)
    @cents -= 1 if c == :penny && @penny > 0
    @cents -= 5 if c == :nickel && @nickel > 0
    @cents -= 10 if c == :dime && @dime > 0
    @cents -= 25 if c == :quarter && @quarter > 0
    @cents -= 100 if c == :dollar && @dollar > 0
    @cents -= 1 if c2 == :penny && @penny > 0
    @cents -= 5 if c2 == :nickel && @nickel > 0
    @cents -= 10 if c2 == :dime && @dime > 0
    @cents -= 25 if c2 == :quarter && @quarter > 0
    @cents -= 100 if c2 == :dollar && @dollar > 0
  end
end
