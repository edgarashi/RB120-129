#Now that we have a Walkable module, we are given a new challenge.
#Apparently some of our users are nobility, and the regular way of walking simply isn't good enough.
# Nobility need to strut.

module Walkable
  def walk
    p "#{self} #{gait} forward"
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  private

  def gait
    "strolls"
  end
end

class Noble
  include Walkable

  def initialize(name, title)
    @name = name
    @title = title
  end

  def to_s
    @title + ' ' + @name
  end

  def name
    p @name
  end

  def title
    p @title
  end

  private

  def gait
    "struts"
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  private

  def gait
    "runs"
  end
end



# We need a new class Noble that shows the title and name when walk is called:
byron = Noble.new("Byron", "Lord")
byron.name
p byron.walk
# => "Lord Byron struts forward"

#We must have access to both name and title because they are needed for other purposes that
#we aren't showing here.
byron.name
# => "Byron"
byron.title
# => "Lord"

mike = Person.new("Mike")
mike.walk
kitty = Cat.new("Kitty")
kitty.walk
flash = Cheetah.new("Flash")
flash.walk
