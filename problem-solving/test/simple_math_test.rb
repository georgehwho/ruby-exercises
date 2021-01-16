require_relative "test_helper"
require "./lib/simple_math"

class SimpleMathTest < Minitest::Test

  def test_it_can_add_two_numbers
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    assert_equal expected, result
  end

  def test_it_can_add_two_different_numbers
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_numbers
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_other_numbers
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    assert_equal expected, result
  end

  def test_it_can_multiply_two_numbers

    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    result = sm.multiply(2,2)
    # determine your expected result
    expected = 4
    # check results
    assert_equal expected, result
  end


  def test_it_can_multiply_two_other_numbers

    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    result = sm.multiply(2,5)
    # determine your expected result
    expected = 10
    # check results
    assert_equal expected, result
  end

  def test_it_can_divide_two_numbers
    # your code goes here
    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    result = sm.divide(2,2)
    # determine your expected result
    expected = 1
    # check results
    assert_equal expected, result
  end

  def test_it_can_divide_two_other_numbers
    # # your code goes here
    # your code goes here
    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    result = sm.divide(10,2)
    # determine your expected result
    expected = 5
    # check results
    assert_equal expected, result
  end

end
