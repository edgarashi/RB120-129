#If we have a class such as the one below:
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# Explain what the @@cats_count variable does and how it works.
# The @@cats_count is a class variable that keeps count of the amount of
# instances of the Cat class. It will increment by one each time a new object
# is instantiated in the Cat class because it has an incrementor in the initialize method.

# What code would you need to write to test your theory?
p Cat.cats_count #-> 0
max = Cat.new('calico')
p Cat.cats_count #-> 1
rascal = Cat.new('white')
p Cat.cats_count #-> 2
