class Yak
  def initialize
    @is_hairy = true
  end

  def hairy?
    @is_hairy
  end

  def shave
    @is_hairy = false
  end
end
