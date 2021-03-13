class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brakes and decelerate #{number} mph"
  end

  def turn_off
    @current_speed = 0
    puts "You shut the car off"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def info
    puts "Your #{@color} #{@model} came out in #{@year}"
  end

  def spray_paint(color)
    self.color = color
    puts "Love the new paint job! #{color} looks great."
  end
end

nissan = MyCar.new('2006', 'Red', 'Xterra')
nissan.info
nissan.spray_paint("Blue")
nissan.info
