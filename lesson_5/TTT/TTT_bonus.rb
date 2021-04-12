class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]] # diagonals

  def initialize
    @squares = {} # {1 => Square.new('R'), 2 => Square.new(' ')}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  # return winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line| # line == 3 element array
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end
  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength

  def draw
    puts "      |     |"
    puts "  #{@squares[1]}   |  #{@squares[2]}  |  #{@squares[3]} "
    puts "      |     |"
    puts "------+-----+------"
    puts "      |     |"
    puts "  #{@squares[4]}   |  #{@squares[5]}  |  #{@squares[6]} "
    puts "      |     |"
    puts "------+-----+------"
    puts "      |     |"
    puts "  #{@squares[7]}   |  #{@squares[8]}  |  #{@squares[9]} "
    puts "      |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marker?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marker?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :score
  attr_reader :marker

  def initialize(marker)
    @marker = marker
    @score = 0
  end

  def add_score
    @score += 1
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = HUMAN_MARKER

  attr_reader :board, :human, :computer

  def clear
    system 'clear'
  end

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
  end

  def play
    clear
    display_welcome_message
    clear
    main_game
    display_goodbye_message
  end

  private

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def main_game
    loop do
      display_board
      player_move
      display_result
      break if score_is_5
      reset
      display_play_again_message
    end
  end

  def score_is_5
    if human.score == 5 || computer.score == 5
      return true
    end
    false
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = HUMAN_MARKER
    end
  end

  def human_turn?
    @current_marker == HUMAN_MARKER
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts "First one to a score of 5 wins"
    puts "Press enter to start"
    answer = gets.chomp
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_board
    puts "You're a #{human.marker}. Computer is #{computer.marker}"
    puts "Your score: #{human.score}. Computer score: #{computer.score}"
    board.draw
    puts ""
  end

  def joinor(arr, delimiter=', ', word = 'or')
    case arr.size
    when 0 then ''
    when 1 then arr.first
    when 2 then arr.join(" #{word} ")
    else
      arr[-1] = "#{word} #{arr.last}"
      arr.join(delimiter)
    end
  end

  def human_moves
    puts "Choose a square between (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, not a valid choice!"
    end
    board[square] = human.marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      human.add_score
    when computer.marker
      computer.add_score
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Wanna play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end
    answer == 'y'
  end

  def reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts '-------------------'
  end
end

game = TTTGame.new
game.play