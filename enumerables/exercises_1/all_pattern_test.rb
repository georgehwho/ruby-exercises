gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    assert_equal true, all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      # Your code goes here
      all_zeros = false unless number.zero?
    end
    assert_equal false, all_zeros
  end

  def test_all_gone
    # skip
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    # Your code goes here
    words.each do |word|
      all_gone = false unless word == 'gone'
    end
    assert_equal true, all_gone
  end

  def test_not_all_gone
    # skip
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    # Your code goes here
    all_gone = true
    words.each do |word|
      all_gone = false unless word == 'gone'
    end
    assert_equal false, all_gone
  end

  def test_all_empty
    # skip
    strings = ["", "", "", "", "", "", ""]
    # Your code goes here
    all_empty = true
    strings.each do |s|
      all_empty = false unless s == ''
    end
    assert_equal true, all_empty
  end

  def test_not_all_empty
    # skip
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    all_empty = true
    strings.each do |s|
      all_empty = false unless s == ''
    end
    assert_equal false, all_empty
  end

  def test_not_all_uppercase
    # skip
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    # Your code goes here
    all_caps = true
    words.each do |w|
      all_caps = false unless w == w.upcase
    end
    assert_equal false, all_caps
  end

  def test_all_lies
    # skip
    lies = [false, false, false, false]
    # Your code goes here
    all_lies = true
    lies.each do |lie|
      all_lies = false unless lie == false
    end
    assert_equal true, all_lies
  end

  def test_all_multiples_of_7
    # skip
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    all_multiples_of_7 = true
    numbers.each do |num|
      all_multiples_of_7 = false unless num % 7 == 0
    end
    assert_equal true, all_multiples_of_7
  end

  def test_not_all_3_digits_long
    # skip
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    all_3_digits = true
    numbers.each do |num|
      all_3_digits = false unless num.to_s.size == 3
    end
    assert_equal false, all_3_digits
  end

  def test_all_4_letter_words
    # skip
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    all_4_letters = true
    words.each do |word|
      all_4_letters = false unless word.size == 3
    end
    assert_equal true, all_4_letters
  end

end
