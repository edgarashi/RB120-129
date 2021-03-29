#If I have the following class:

class Television
  def self.manufacturer #-> class method
    # method logic
  end

  def model
    # method logic
  end
end

# Which one of these is a class method (if any) and how do you know?
# How would you call a class method?
#class method is 'self.manufacturer' in this case, self is refering to the
#class itself.
#Ex. of how to call it:
Television.manufacturer