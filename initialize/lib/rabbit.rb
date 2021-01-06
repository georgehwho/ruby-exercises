# class Rabbit
#   attr_accessor :name, :num_syllables
#
#   def initialize(h)
#     if h[num_syllables] == 2
#       @name = "#{h[:name]} Rabbit"
#       @name
#     else
#       @name = h[:name]
#     end
#   end
# end

# something about doing login in the intialize method is doesn't work.


class Rabbit
  attr_reader :name, :num_syllables

  def initialize(h)
    @name = h[:name]
    @num_syllables = h[:num_syllables]
  end

  def name
    if @num_syllables == 2
      @name = "#{@name} Rabbit"
      @name
    else
      @name
    end
  end
end
