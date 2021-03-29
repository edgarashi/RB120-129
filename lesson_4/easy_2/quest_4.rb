#What could you add to this class to simplify it and remove two methods from
#the class definition while still maintaining the same functionality?

class BeesWax
  attr_accessor :type #helps getter and setter methods

  def initialize(type)
    @type = type
  end

  def describe_type
    # original - > puts "I am a #{@type} of Bees Wax"
    puts "I am a #{type} of Bees Wax" #can remove @, because we can call the 'type' reader method now wt attr_accessor added
  end
end

honey = BeesWax.new('honey')
p honey.type
honey.type = "I don't know what else"
p honey.type