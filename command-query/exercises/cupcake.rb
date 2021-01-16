class Cupcake < Struct.new(:kind, :sugar)
  def flavor
    kind
  end

end
