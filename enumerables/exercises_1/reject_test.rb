gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class RejectTest < Minitest::Test

  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = numbers.reject do |number|
      number.zero?
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    letters = ["a", "l", "l", " ", "y", "o", "u", "r", " ", "b", "a", "s", "e", " ", "a", "r", "e", " ", "b", "e", "l", "o", "n", "g", " ", "t", "o", " ", "u", "s"]
    remaining = letters.reject do |letter|
      # Your code goes here
      letter.include?('a') ||
      letter.include?('e') ||
      letter.include?('i') ||
      letter.include?('o') ||
      letter.include?('y') ||
      letter.include?('u')
    end
    assert_equal ["l", "l", " ", "r", " ", "b", "s", " ", "r", " ", "b", "l", "n", "g", " ", "t", " ", "s"], remaining
  end

  def test_remove_numbers_divisible_by_3
    # skip
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    # Your code goes here
    remaining = numbers.reject { |num| num % 3 == 0 }
    assert_equal [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20], remaining
  end

  def test_remove_words_with_more_than_three_letters
    # skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    # Your code goes here
    selected = words.reject { |word| word.length > 3 }
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  def test_remove_words_ending_in_e
    # skip
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    # Your code goes here
    selected = words.reject { |word| word[-1] == 'e' }
    assert_equal ["you", "thinking", "belt", "sing"], selected
  end

  def test_remove_words_ending_in_ing
    # skip
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    # Your code goes here
    selected = words.reject { |word| word[-3..-1] == 'ing' }
    assert_equal ["finger", "drought", "bingo", "purposeful"], selected
  end

  def test_remove_words_containing_e
    # skip
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    # Your code goes here
    selected = words.reject { |word| word.include? 'e'}
    assert_equal ["four", "pizza"], selected
  end

  def test_remove_dinosaurs
    # skip
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    # Your code goes here
    notasaurus = animals.reject { |animal| animal.include? 'saurus' }
    assert_equal ["narwhal", "eel"], notasaurus
  end

  def test_remove_numbers
    # skip
    elements = ["cat", "dog", 23, 81.1, 56, "aimless", 43]
    # Your code goes here
    not_numbers = elements.reject { |element| element.class != String }
    assert_equal ["cat", "dog", "aimless"], not_numbers
  end

  def test_remove_floats
    # skip
    elements = ["cat", "dog", 32.333, 23, 56, "aimless", 43.2]
    # Your code goes here
    not_numbers = elements.reject { |element| element.class == Float }
    assert_equal ["cat", "dog", 23, 56, "aimless"], not_numbers
  end

  def test_remove_animals_starting_with_vowels
    # skip
    animals = ["aardvark", "bonobo", "cat", "dog", "elephant"]
    # Your code goes here
    remaining = animals.reject { |animal| %w[a e i o u y].include? animal[0] }
    assert_equal ["bonobo", "cat", "dog"], remaining
  end

  def test_remove_capitalized_words
    # skip
    words = ["CAT", "dog", "AIMLESS", "Trevor", "butter"]
    # Your code goes here
    remaining = words.reject { |word| word == word.upcase }
    assert_equal ["dog", "Trevor", "butter"], remaining
  end

  def test_remove_arrays
    # skip
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    remaining = elements.reject { |element| element.class == Array }
    assert_equal ["CAT", 23, "AIMLESS", 43, "butter"], remaining
  end

  def test_remove_hashes
    # skip
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    # Your code goes here
    remaining = elements.reject { |element| element.class == Hash }
    assert_equal ["cat", 23, "aimless", 43], remaining
  end

end
