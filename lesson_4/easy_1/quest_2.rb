# Question 2

# If we have a Car class and a Truck class and we want to be able to go_fast,
# how can we add the ability for them to go_fast using the module Speed?
# How can you check if your Car or Truck can now go fast?


module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed #include Speed module in Car class

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed #include Speed module in Truck class

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

chevy = Truck.new
nisaan = Car.new
chevy.go_fast #-> I am a Truck and going super fast!
nisaan.go_fast #-> I am a Car and going super fast!