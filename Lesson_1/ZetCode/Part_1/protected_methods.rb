class Some
  def initialize
    method1 #protected can be called wt or w/o self keyword
    self.method1
  end

  protected

  def method1
    puts "protected method1 called"
  end
end

s = Some.new
# s.method1