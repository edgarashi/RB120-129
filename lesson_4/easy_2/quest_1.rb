#You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

#What is the result of executing the following code:

oracle = Oracle.new
p oracle.predict_the_future
#the .sample method will pull a random element from the array,
#so three options for output will be:
  #Option 1: You will eat a nice lunch
  #Option 2: You will take a nap soon.
  #Option 3: You will stay at work late.
