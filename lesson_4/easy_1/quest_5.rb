#Which of these two classes has an instance variable and how do you know?
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

#Answer:
#The class pizza has an instance variable 'name' which is delimited by an
#@ sign.

pizza = Pizza.new("cheese")
orange = Fruit.new('apple')

p pizza.instance_variables #-> [:@name]
p orange.instance_variables #-> []
