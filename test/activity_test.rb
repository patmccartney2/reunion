require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_existence
    a = Activity.new("skiing", "5")
    assert_instance_of Activity, a
  end

  def test_it_has_participants
    a = Activity.new("skiing", "5")
    a.add_participant("tom")
    a.gen_hash_with_name_and_price
    assert_equal a.accounting_roster["tom"], "5"
  end

  def test_add_participant
    a = Activity.new("skiing", "5")
    a.add_participant("aziz")
    assert_equal a.activity_roster[0], "aziz"
  end

  def test_price_calculator
    a = Activity.new("skiing", 5000)
    a.add_participant("geo")
    a.add_participant("theo")
    a.add_participant("aziz")
    a.add_participant("tom")
    a.add_participant("dexter")
    assert_equal a.gen_total_cost, 1000

  end

end
