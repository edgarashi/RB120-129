#If I have the following class:

class Television
  def self.manufacturer
    puts "I am Telivision class"
  end

  def model
    puts "I am model"
  end
end

# What would happen if I called the methods like shown below?
tv = Television.new
tv.manufacturer #-> NoMethodError
tv.model #->"I am model"

Television.manufacturer #-> "I am Television class"
Television.model #-> NoMethodError
