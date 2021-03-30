#What is used in this class but doesn't add any value?
class Light
  attr_accessor :brightness, :color #potentially add value

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
    #'return' adds no value because it is implicitly returned as last line of the method
  end

end
