#If we have this class:
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play
    "We are playing bingo!"
  end
end

#What would happen if we added a play method to the Bingo class,
#keeping in mind that there is already a method of this name in the Game class
#that the Bingo class inherits from.
#A 'play' method in the Bingo class would supersede the 'play' method in the
#Game class, because in Bingo's lookup path, it will look in the Bingo class
#first.
#Ex.
#After adding 'play' method to Bingo class
game_of_bingo = Bingo.new
p game_of_bingo.play
