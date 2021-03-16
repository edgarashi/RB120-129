# Continuing with our Person class definition,
# what does the below print out?



class Person
  attr_accessor :first_name, :last_name


  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end

  def to_s
    name
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
#essentially calling to_s on bob,so will provide
#it's place in memory

#with added to_s method, should just output full name
#i.e. "This person's name is: Robert Smith"