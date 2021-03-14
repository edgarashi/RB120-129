#define a class
class Box
  #initialize our class variables
  @@count = 0
  #constructor method
  def initialize(w, h)
    #assign instance variables
    @width, @height = w, h

    @@count += 1
  end

  #instance method by default is public
  def getArea
    getWidth() * getHeight
  end

  #define to_s method
  def to_s
    "(w:#{@width}, h:#{@height})"
  end

  #accessor method
  def printWidth
    @width
  end

  def printHeight
    @height
  end

  # setter methods
  def setWidth=(value)
    @width = value
  end
  def setHeight=(value)
    @height = value
  end

  #define private accessor methods
  def getWidth
    @width
  end
  def getHeight
    @height
  end
  #make them private
  private :getWidth, :getHeight

  #instance method to print area
  def printArea
    @area = getWidth() * getHeight
    puts "Big box area is : #@area"
  end
  #make it protected
  protected :printArea

  def self.printCount()
    puts "Box count is : #{@@count}"
  end
end

#create an object
box = Box.new(10, 20)  #w, h

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

#try to call protected methods (NoMethodError)
box.printArea()

#use setter methods
# box.setWidth = 30
# box.setHeight = 50

#use accessor methods
# x = box.printWidth()
# y = box.printHeight()

# puts "Width of the box is : #{x}"
# puts "Height of the box is : #{y}"

# call instance methods
# a = box.getArea()
# puts "Area of the box is : #{a}"

#call class method to print box count
# Box.printCount()

#to_s method will be called in reference of string automatically
# puts "String representation of box is #{box}"
