require 'Minitest/autorun'
require 'Minitest/rg'
require_relative '../river.rb'

class TestRiver < MiniTest::Test

def setup
  @river = River.new("Bear River")
  @fish1 = Fish.new("Salmon")
  @fish2 = Fish.new("Tuna")
  @fish3 = Fish.new("Trout")
end

def test_name
  assert_equal("Bear River", @river.name)
end

def test_fish_count()
  actual = @river.fish_count()
  assert_equal(0, actual)
 end

 def test_add_fish()
    @river.add_fish(@fish1)
    actual = @river.fish_count()
    assert_equal(1, actual)
  end

  def test_remove_fish()
    @river.add_fish(@fish1)
    @river.remove_fish()
    actual = @river.fish_count()
    assert_equal(0, actual)
  end

end
