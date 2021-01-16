class Hydra
  attr_reader :name, :is_alive, :heads

  def initialize(n, h = 3)
    @name = n
    @is_alive = true
    @heads = []
    h.times { |i| @heads << Head.new(i) }
  end

  def alive?
    self.is_alive
  end

  def died
    @is_alive = false
  end
end


class Head
  attr_reader :is_status, :name
  def initialize(n)
    @is_status = :fire_breathing_terror
    @name = "head_#{n}"
  end

  def status?
    self.is_status
  end

  def chopped
    @is_status = :chopped
  end

  def cauterize
    @is_status = :cauterized
  end

  def regrow
    @is_status = :fire_breathing_terror
  end

end


class Hero
  attr_reader :name

  def initialize(n)
    @name = n
  end

  def swing_sword_at(hydra)
    hydra.heads.each do |head|
      if head.status? == :fire_breathing_terror
        head.chopped
        break
      else
        next
      end
    end
  end

  def cauterize_w_torch(hydra)
    hydra.heads.each do |head|
      if head.status? == :chopped
        head.cauterize
        break
      else
        next
      end
    end
    hydra.died if hydra.heads.all? { |head| head.status? == :cauterized }
  end

  def wait_around(hydra)
    s = ''
    hydra.heads.each do |head|
      if head.status? == :chopped
        head.regrow
        s = "While you've been dilly dallying one of the Hydra's heads has grown back!"
        break
      else
        s = "Umm...hey, not to prod, but fire breathing beast in front of you here.  Unless you're planning on roasting marshmallows, you might want to do something about it"
        next
      end
    end
    s
  end

end
