class Santa
  def initialize
    @is_fits = true
    @cookie_counter = 0
  end

  def fits?
    @is_fits
  end

  def eats_cookies
    @cookie_counter += 1
    @is_fits = false if @cookie_counter >= 3
  end
end
