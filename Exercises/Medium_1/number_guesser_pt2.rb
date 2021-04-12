class GuessingGame
  def initialize(starter, ender)
    @starter = starter
    @ender = ender
    @range = (starter..ender).to_a
    size_of_range = @range.size
    @@guesses = Math.log2(size_of_range).to_i + 1
    @answer = nil
    @guess_numb = @range.sample
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
    puts "Enter a number between #{@starter} and #{@ender}:"
  end

  def guess
    loop do
      @answer = gets.chomp.to_i
      break if (@starter..@ender).to_a.include? @answer
      puts "Invalid guess: Enter a number between #{@starter} and #{@ender}"
    end
    too_high_or_low(@answer)
  end


end



game = GuessingGame.new(501, 1500)
game.play

# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 104
# Invalid guess. Enter a number between 501 and 1500: 1000
# Your guess is too low.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 1250
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 1375
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 80
# Invalid guess. Enter a number between 501 and 1500: 1312
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 1343
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 1359
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 1351
# Your guess is too high.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 1355
# That's the number!

# You won!

# game.play
# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 1000
# Your guess is too high.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 750
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 875
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 812
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 843
# Your guess is too high.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 820
# Your guess is too low.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 830
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 835
# Your guess is too low.

# You have 2 guesses remaining.
# Enter a number between 501 and 1500: 836
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 501 and 1500: 837
# Your guess is too low.

# You have no more guesses. You lost!