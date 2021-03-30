#If we have these two methods:
# class Computer
#   attr_accessor :template

#   def create_template
#     @template = "template 14231"
#   end

#   def show_template
#     template
#   end
# end

#and

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231" #self needed here
    #why is self needed here?
  end

  def show_template
    template #self not needed here
  end
end

#What is the difference in the way the code works?
# General rule from Ruby Style guide is "avoid self where not
#required"

mac = Computer.new
mac.create_template
p mac.show_template
