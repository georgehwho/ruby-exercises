class Retirement
  def calculate(n, n2)
    if n <= -1
      "Error. Age cannot be negative."
    elsif n2 <= -1
      "Error. Age cannot be negative."
    else
      "You have #{n2 - n} years left until you can retire. It is #{2015}, so you can retire in #{2015 + n2 - n}."
    end
  end
end
