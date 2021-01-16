class Teeth
  def initialize
    @is_clean = false
  end

  def clean?
    @is_clean
  end

  def brush
    @is_clean = true
  end
end
