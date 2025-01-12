require 'minitest/autorun'
require 'minitest/pride'

class MaxAndMinByPatternTest < Minitest::Test
  def test_1
    numbers = [1, 100, 1000, 1000000]
    greatest = numbers[0]
    numbers.each do |number|
      if number > greatest
        greatest = number
      end
    end
    assert_equal 1000000, greatest
  end

  def test_2
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1000000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each do |name, value|
      if value > greatest
        greatest = value
      end
    end
    assert_equal 1000000, greatest
  end

  def test_3
    # skip
    meals = ["banana", "nuts", "salad", "steak", "cake"]
    shortest_word = meals[0]
    meals.each do |meal|
      # Your Code Here
      shortest_word = meal if shortest_word.size > meal.size
    end

    assert_equal "nuts", shortest_word
  end

  def test_4
    # skip
    meals = {
      breakfast: "banana",
      snack: "nuts",
      lunch: "salad",
      dinner: "steak",
      dessert: "cake"
    }
    shortest_word = meals[meals.keys.first]
    meals.each do |meal, dish|
      # Your Code Here
      shortest_word = dish if shortest_word.size > dish.size
    end

    assert_equal "nuts", shortest_word
  end

  def test_5
    # skip
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    # Your Code Here
    stats.each do |s|
      most_digits = s if most_digits.to_s.size < s.to_s.size
    end

    assert_equal 0.27601, most_digits
  end


  def test_6
    # skip
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    # Your Code Here
    stats.each do |k, v|
      most_digits = v if most_digits.to_s.size < v.to_s.size
    end

    assert_equal 0.27601, most_digits
  end

  def test_7
    # skip
    ages = [39, 45, 29, 24, 50]
    # Your Code Here
    oldest = ages[0]
    ages.each do |a|
      oldest = a if oldest < a
    end

    assert_equal 50, oldest
  end

  def test_8
    # skip
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    # Your Code Here
    oldest = {name: ages.keys.first, age: ages.values.first }
    ages.each do |k, v|
      if v > oldest[:age]
        oldest[:name] = k.to_s
        oldest[:age] = v
      end
    end

    expected = {name: "miguel", age: 50}
    assert_equal expected, oldest
  end

  def test_9
    # skip
    programmers = [["katrina", "sandi", "jim", "aaron", "desi"], ["abby", "jon", "susan"]]
    # Your Code Here
    fewest_programmers = programmers[0]
    programmers.each do |p|
      fewest_programmers = p if fewest_programmers.size > p.size
    end

    assert_equal ["abby", "jon", "susan"], fewest_programmers
  end

  def test_10
    # skip
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    # Your Code Here
    fewest_programmers = programmers.keys.first
    programmers.each do |k, v|
      fewest_programmers = k if programmers[fewest_programmers].size > v.size
    end

    assert_equal :java, fewest_programmers
  end
end
