TTT:
Description of the game:
Tic Tac Toe is a 2-player board game played on a 3x3 grid. Players take turns marking a square. The first player to mark 3 squares in a row wins. 

Nouns: board, player, square, grid

Verbs: played,mark

Board, Square, Player, 

​	-mark

​	-play

Classes:

```ruby
class Board 
  def initialize 
    #need way to model 3x3 grid
    #what data structure used?
    # array or hash of Square objects?
    # array/hash of strings or integers
  end 
end

class Square 
  def initialize 
    #status to keep track of this square's mark?
  end
end

class Player 
  def initialize 
    #'marker' to keep track of player's symbol ('X' or 'O')
  end
  
  def mark 
    
  end
  
  def play
    
  end
end
```

Orchestration Engine:

```ruby
class TTTGame 
  def play 
    
  end
end

#start game 
game = TTTGame.new 
game.play
```



```ruby
class TTTGame 
  def play 
    display_welcome_message 
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full?
      
      second_player_moves
      break if someone_won? || board_full?
    end
    display_result 
    display_goodbye_message
  end
end
```

