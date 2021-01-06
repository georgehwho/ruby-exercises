gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = words.find do |word|
      word.length == 7
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = words.find do |word|
      # Your code goes here
      word == "waldo"
    end
    assert_equal nil, found
  end

  def test_find_waldo

    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    # Your code goes here
    found = words.find { |word| word == "waldo" }
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words

    words = ["piglet", "porridge", "bear", "blueberry"]
    # Your code goes here
    found = words.find { |w| w.length == 3 }
    assert_equal nil, found
  end

  def test_find_13

    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    found = numbers.find { |n| n == 13 }
    assert_equal 13, found
  end

  def test_find_first_even_number
    # skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    found = numbers.find { |n| n.even? }
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    # skip
    numbers = [2, 8, 9, 27, 24, 5]
    # Your code goes here
    found = numbers.find { |n| n % 3 == 0 }
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    # skip
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    found = words.find do |w|
      w[0] == 'q'
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    # skip
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    # Your code goes here
    found = words.find { |w| w[(w.length - 2)..(w.length - 1)] == "er" }
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    # skip
    numbers = [1, 8, 19, 21, 29, 31, 34]
    # Your code goes here
    found = numbers.find { |n| n > 20 }
    assert_equal 21, found
  end

end
