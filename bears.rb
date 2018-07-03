require_relative'river.rb'
require_relative'fish.rb'

class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count()
    return @stomach.length
  end

  def eat_fish_from(river)
    fish = river.remove_fish
    @stomach << fish
  end

  def roar
    return "...RWOOOOOAR!!!"
  end
end
