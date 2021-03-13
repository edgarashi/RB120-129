# class MyCar
#   attr_accessor :color
#   attr_reader :year, :model

#   def initialize(y, c, m)
#     @year = y
#     @color = c
#     @model = m
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate #{number} mph"
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brakes and decelerate #{number} mph"
#   end

#   def turn_off
#     @current_speed = 0
#     puts "You shut the car off"
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def info
#     puts "Your #{@color} #{@model} came out in #{@year}"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Love the new paint job! #{color} looks great."
#   end

#   def self.gas_mileage(miles, gallons)
#     "#{miles/gallons} miles per gallon of gas"
#   end

#   def to_s
#     "You have a #{year} #{color} #{model}"
#   end
# end

# nissan = MyCar.new(2004, "Red", "Xterra")
# puts nissan

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
p bob.name