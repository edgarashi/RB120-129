# We have an Oracle class and a RoadTrip class that inherits from the
# Oracle class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

# What is the result of the following:
trip = RoadTrip.new
p trip.predict_the_future
#sample method will pull a random element from the 'choices' array
#in this case the choices instance method in the 'RoadTrip' class
#will override the 'choices' instance method in the 'Oracle' class
#therefore three options will be:
  #Option 1: "You will visit Vegas"
  #Option 2: "You will fly to Fiji"
  #Option 3: "You will romp in Rome"
