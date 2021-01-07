gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NonePatternTest < Minitest::Test

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = true
    things.each do |thing|
      none_broken = false if thing == "broken"
    end
    assert_equal true, none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each do |number|
      # Your code goes here
      not_none_negative = false if number != number.abs
    end
    assert_equal false, not_none_negative
  end

  def test_none_are_negative
    # skip
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    # Your code goes here
    numbers.each do |num|
      none_negative = false if num != num.abs
    end
    assert_equal true, none_negative
  end

  def test_none_shall_pass
    # skip
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    # Your code goes here
    none_shall_pass = true
    critters.each do |crit|
      none_shall_pass = false if crit == 'balrog'
    end
    assert_equal true, none_shall_pass
  end

  def test_one_or_more_shall_pass
    # skip
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    # Your code goes here
    none_shall_pass = true
    phrases.each do |p|
      none_shall_pass = false if p == 'shall pass'
    end
    assert_equal false, none_shall_pass
  end

  def test_none_even
    # skip
    numbers = [3, 9, 15, 21, 19]
    # Your code goes here
    none_even = true
    numbers.each do |num|
      none_even = false if num % 2 == 0
    end 
    assert_equal true, none_even
  end

end
