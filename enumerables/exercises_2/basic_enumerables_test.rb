require 'minitest/autorun'
require 'minitest/pride'

class EnumerablesOneTest < Minitest::Test
  def test_squares
    numbers = [1, 2, 3, 4, 5]
    actual = numbers.map do |number|
      number ** 2
    end
    assert_equal [1, 4, 9, 16, 25], actual
  end

  def test_find_waldo
    # skip
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    actual = words.find do |word|
      # Your Code Here
      word == 'waldo'
    end
    assert_equal "waldo", actual
  end

  def test_pick_words_with_three_letters
    # skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    actual = words.find_all { |word| word.size == 3 }
    assert_equal ["bad", "cat", "dog", "red"], actual
  end

  def test_normalize_zip_codes
    # skip
    numbers = [234, 10, 9119, 38881]
    # Your Code Here
    actual = numbers.map { |num| num.to_s.rjust(5, '0') }
    assert_equal ["00234", "00010", "09119", "38881"], actual
  end

  def test_no_waldo
    # skip
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    # Your Code Here
    found = words.find { |word| word == 'waldo' }
    assert_nil found
  end

  def test_pick_floats
    # skip
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    # Your Code Here
    actual = numbers.find_all { |num| num.class == Float }
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], actual
  end

  def test_pick_dinosaurs
    # skip
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    actual = animals.find_all { |animal| animal.include? 'saurus' }
    assert_equal ["tyrannosaurus", "achillesaurus", "qingxiusaurus"], actual
  end

  def test_words_with_no_vowels
    # skip
    words = ["green", "sheep", "travel", "least", "boat"]
    # Your Code Here
    actual = words.map { |word| word.gsub(/[a e i o u]/, '') }
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], actual
  end
end
