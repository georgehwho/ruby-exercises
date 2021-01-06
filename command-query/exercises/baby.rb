class Baby

  def initialize(t = true)
    @tired = t
  end

  def tired?
    @tired
  end

  def nap
    @tired = false
  end

end
