#Create an object-oriented number guessing class for numbers
#in the range 1 to 100, with a limit of 7 guesses per game.
#The game should play like this:


class GuessingGame
  @@guesses = 7

  def initialize
    @guess_numb = (1..100).to_a.sample
    @answer = nil
  end

  def play
    loop do
      break if out_of_guesses
      welcome_message
      guess
      break if won?
      @@guesses -= 1
    end
    end_message
  end

  private

  def too_high_or_low(answer)
    if answer > @guess_numb
      puts "Your guess is too high"
    else
      puts "Your guess is too low"
    end
  end

  def end_message
    if won?
      puts "You won!"
    else
      puts "You have run out of guesses! You lost."
    end
  end

  def won?
    @answer == @guess_numb
  end

  def out_of_guesses
    @@guesses == 0
  end

  def welcome_message
    puts "You have #{@@guesses} guesses remaining"
    puts "Enter a number between 1 and 100:"
  end

  def guess
    loop do
      @answer = gets.chomp.to_i
      break if (1..100).to_a.include? @answer
      puts "Invalid guess: Enter a number between 1 and 100"
    end
    too_high_or_low(@answer)
  end

end


game = GuessingGame.new
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!