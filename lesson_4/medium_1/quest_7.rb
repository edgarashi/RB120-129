#How could you change the method name below so that the
#method name is more clear and less repetitive?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def status #changed from 'light_status' to 'status'
    #because when written, previously would be my_light.light_status'
    #and Light.status makes more intuitive sense.
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end