# module Towable
#   def tow
#     p "I can tow big things!"
#   end
# end


# class Vehicle
#   @@number_of_vehicles = 0

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def self.number_of_vehicles
#     puts "This program has created #{@@number_of_vehicles} number of vehicles."
#   end

#   def self.gas_mileage(miles, gallons)
#     "#{miles/gallons} miles per gallon of gas"
#   end

#   def initialize(y, c, m)
#     @@number_of_vehicles += 1
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

#   def age
#     puts "Your #{self.model} is #{years_old} years old."
#   end

#   private

#   def years_old
#     Time.new.year - self.year
#   end
# end


# class MyCar < Vehicle
#   NUMBER_OF_DOORS = 4
#   def to_s
#     "My car is a #{color}, #{year}, #{model}"
#   end
# end

# class MyTruck < Vehicle
#   NUMBER_OF_DOORS = 2
#   include Towable

#   def to_s
#     "My truck is a #{color}, #{year}, #{model}"
#   end
# end



# my_car = MyCar.new(2004, "Red", "Xterra")
# my_truck = MyTruck.new(1996, "Blue", "Tacoma")

# my_car.age
# my_truck.age

# class Student
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end


#   def better_grade_than?(other)
#     grade > other.grade
#   end

#   protected
#   attr_reader :grade
# end

# joe = Student.new("Joe", 90)
# bob = Student.new("Bob", 84)
# puts "Well done!" if joe.better_grade_than?(bob)


class Person
  def hello
    hi
  end

  private
  def hi
    puts "hi"
  end
end



bob = Person.new
bob.hello
