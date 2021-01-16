class Door
  def initialize
    @is_locked = true
  end

  def locked?
    @is_locked
  end

  def unlock
    @is_locked = false
  end
end 
