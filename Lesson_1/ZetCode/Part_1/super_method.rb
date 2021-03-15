class Base

  def show(x=0, y=0)
    p "Base class, x: #{x}, y: #{y}"
  end
end

class Derived < Base

  def show(x, y)
    super #passed both x and y in
    super(x)
    super(x, y)
    super() #passed neither x and y in
  end
end

d = Derived.new
d.show(3, 3)