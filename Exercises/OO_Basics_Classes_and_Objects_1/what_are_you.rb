#Using the code from the previous exercise, add an
#initialize method that prints I'm a cat! when a
#new Cat object is initialized.


class Cat
  def initialize
    p "I'm a cat!"
  end
end

kitty = Cat.new