gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    assert_equal 29, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    assert_equal :ladonna, younger_than_thirty
  end

  def test_3
    # skip
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      # Your Code Here
      if age > 50
        older_than_fifty = age
        break
      end
    end

    assert_nil older_than_fifty
  end

  def test_4
    # skip
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, age|
      # Your Code Here
      if age > 50
        older_than_fifty = name
        break
      end
    end

    assert_nil older_than_fifty
  end

  def test_5
    # skip
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    # Your Code Here
    ages.each do |age|
      if age % 3 == 0
        multiple_of_three = age
        break
      end
    end

    assert_equal 39, multiple_of_three
  end

  def test_6
    # skip
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    # Your Code Here
    ages.each do |name, age|
      if age % 3 == 0
        multiple_of_three = name
        break
      end
    end

    assert_equal :abdi, multiple_of_three
  end

  def test_7
    # skip
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    # Your Code Here
    carmen = nil
    people.each do |p|
      if p.include? 'Carmen'
        carmen = p
        break
      end
    end

    assert_equal "Carmen Sandiego", carmen
  end

  def test_8
    # skip
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    # Your Code Here
    where_is_carmen_sandiego = nil
    places.each do |place, name|
      if name.include? 'Carmen'
        where_is_carmen_sandiego = place
        break
      end
    end

    assert_equal :Santa_Fe, where_is_carmen_sandiego
  end

  def test_9
    # skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your Code Here
    even = nil
    numbers.each do |num|
      if num % 2 == 0
        even = num
        break
      end
    end

    assert_equal 10, even
  end

  def test_10
    # skip
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here
    pending = nil
    purchases.each do |purchase, status|
      if status == :pending
        pending = purchase.to_sym
        break
      end
    end

    assert_equal :books, pending
  end

  def test_11
    # skip
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here
    starts_with_b = nil
    purchases.each do |purchase, status|
      if purchase[0] == 'b'
        starts_with_b = purchase
        break
      end
    end 

    assert_equal "backpack", starts_with_b
  end

end
