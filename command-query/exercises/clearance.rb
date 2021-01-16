class Clearance
  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def best_deal
    if self.inventory.empty?
      nil
    else
      @inventory.sort_by { |item| item.diff }.first.name
    end
  end

  def <<(item)
    @inventory << item
  end
end
