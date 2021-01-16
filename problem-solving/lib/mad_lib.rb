class Madlib
  def initialize
    @noun = ""
    @verb = ""
    @adjective = ""
    @adverb = ""
  end

  def noun(s)
    @noun = s
  end

  def verb(s)
    @verb = s
  end

  def adjective(s)
    @adjective = s
  end

  def adverb(s)
    @adverb = s
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end
