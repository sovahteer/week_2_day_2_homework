require 'Minitest/autorun'
require 'Minitest/rg'
require_relative '../bears.rb'

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Paddington", "Grizzly")
  end

  def test_bear_name
    assert_equal("Paddington", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly",@bear.type)
  end

  def test_stomach_count()
     actual = @bear.stomach_count()
     assert_equal(0, actual)
  end

  def test_eat_fish_from__river
    river = River.new("Bear River")
    salmon = Fish.new("Salmon")
    trout = Fish.new("Trout")
    river.add_fish(salmon)
    river.add_fish(trout)
    @bear.eat_fish_from(river)
    actual = @bear.stomach_count
    assert_equal(1, actual)
    actual = river.fish_count()
    assert_equal(1, actual)
  end

  def test_roar
    assert_equal("...RWOOOOOAR!!!", @bear.roar)
  end
end
