#If we have this class:

class Game
  def play
    "Start the game!"
  end
end

#And another class:

class Bingo < Game #Bingo class now inherits from Game class
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play
# method from the Game class?
# Bingo < Game will cause Bingo class to inherit all methods from the
#Game class.

bingo_game = Bingo.new
p bingo_game.play