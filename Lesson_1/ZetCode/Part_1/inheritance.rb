class Being
  def initialize
    puts "Being class created"
  end
end

class Human < Being
  def initialize
    super #refs constructor in Being class(parent)
    puts "Human class created"
  end
end

Being.new
Human.new