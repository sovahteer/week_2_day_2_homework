require 'Minitest/autorun'
require 'Minitest/rg'
require_relative '../fish.rb'

class TestFish < MiniTest::Test

  def test_fish_name()
    fish = Fish.new("Salmon")
    assert_equal("Salmon", fish.name())
  end

end
