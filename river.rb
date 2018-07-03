require_relative'fish.rb'
class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.length
  end

  def add_fish(new_fish)
    return @fish << new_fish
  end

  def remove_fish()
    return @fish.pop()
  end

end
