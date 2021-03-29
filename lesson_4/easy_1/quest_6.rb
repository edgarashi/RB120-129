#What could we add to the class below to access the instance variable @volume?

class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

new_cube = Cube.new(10)
p new_cube.instance_variable_get("@volume") #-> 10
p new_cube.volume #-> 10 because of attr_reader