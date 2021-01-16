class Floor
  def initialize
    @is_dirty = true
  end

  def dirty?
    @is_dirty
  end

  def wash
    @is_dirty = false
  end
end
