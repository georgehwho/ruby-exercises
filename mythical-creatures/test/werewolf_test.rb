gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/werewolf'

class WerewolfTest < Minitest::Test
  def test_it_has_a_name
    werewolf = Werewolf.new("David")
    assert_equal "David", werewolf.name
  end

  def test_it_has_a_location
    # skip
    werewolf = Werewolf.new("David","London")
    assert_equal "London", werewolf.location
  end

  def test_it_is_by_default_in_human_form
    # skip
    werewolf = Werewolf.new("David","London")
    assert_equal true, werewolf.human?
  end

  def test_when_starting_as_a_human_changing_means_it_is_no_longer_human
    # skip
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    assert_equal false, werewolf.human?
  end

  def test_when_starting_as_a_human_changing_turns_it_into_a_werewolf
    # skip
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    assert_equal true, werewolf.wolf?
  end

  def test_when_starting_as_a_human_changing_a_second_time_it_becomes_human_again
    # skip
    werewolf = Werewolf.new("David","London")
    assert_equal true, werewolf.human?
    werewolf.change!
    werewolf.change!
    assert_equal true, werewolf.human?
  end

  def test_when_starting_as_a_werewolf_changing_a_second_time_it_becomes_werewolf_again
    # skip
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    assert_equal true, werewolf.wolf?
    werewolf.change!
    werewolf.change!
    assert_equal true, werewolf.wolf?
  end

  def test_is_not_hungry_by_default
    # skip
    # your code here
    werewolf = Werewolf.new("David")
    assert_equal false, werewolf.hungry?
  end

  def test_becomes_hungry_after_changing_to_a_werewolf
    # skip
    # your code here
    werewolf = Werewolf.new("David")
    werewolf.change!
    assert_equal true, werewolf.hungry?
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end
  end

  def test_consumes_a_victim
    # skip
    # your code here
    werewolf = Werewolf.new('David')
    werewolf.change!
    victim = Victim.new
    werewolf.consume(victim)
    assert_equal 1, werewolf.victims.length
  end

  def test_cannot_consume_victim_if_in_human_form
    # skip
    # your code here
    werewolf = Werewolf.new('David')
    victim = Victim.new
    assert_equal 'ur a human!', werewolf.consume(victim)
  end

  def test_a_werewolf_who_has_consumed_a_victim_is_no_longer_hungry

    # your code here
    werewolf = Werewolf.new('David')
    werewolf.change!
    victim = Victim.new
    werewolf.consume(victim)
    assert_equal false, werewolf.hunger
  end

  def test_a_werewolf_who_has_consumed_a_victim_makes_the_victim_dead
    # skip
    # your code here
    werewolf = Werewolf.new('David')
    werewolf.change!
    victim = Victim.new
    werewolf.consume(victim)
    assert_equal :dead, victim.status
  end

end
