gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      # Your code goes here
      if word == "waldo"
        found = word
        break
      end
    end
    assert_nil found
  end

  def test_find_waldo

    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    # Your code goes here
    words.each do |word|
      if word == "waldo"
        found = word
        break
      end
    end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words

    words = ["piglet", "porridge", "bear", "blueberry"]
    # Your code goes here
    found = nil
    words.each do |w|
      if w.length == 3
        found = w
        break
      end
    end
    assert_nil found
  end

  def test_find_13

    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    found = nil
    numbers.each do |n|
      if n == 13
        found = n
        break
      end
    end
    assert_equal 13, found
  end

  def test_find_first_even_number
    # skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    found = nil
    numbers.each do |n|
      if n.even?
        found = n
        break
      end
    end
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3

    numbers = [2, 8, 9, 27, 24, 5]
    # Your code goes here
    found = nil
    numbers.each do |n|
      if n % 3 == 0
        found = n
        break
      end
    end
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    # skip
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    found = nil
    words.each do |w|
      if w[0] == "q"
        found = w
        break
      end
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er

    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    # Your code goes here
    found = []
    words.each do |w|
      if w[(w.length - 2)..(w.length - 1)] == "er"
        found = w
        break
      end
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    # skip
    numbers = [1, 8, 19, 21, 29, 31, 34]
    # Your code goes here
    found = []
    numbers.each do |n|
      if n > 20
        found = n
        break
      end
    end 
    assert_equal 21, found
  end

end
