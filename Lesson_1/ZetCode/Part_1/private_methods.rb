class Some
  def initialize
    method1
    # self.method1  #private methods cannot be called wt reciever
  end

  private

  def method1
    puts "private method1 called"
  end

end

s = Some.new
# s.method1 #error: private method called