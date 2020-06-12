WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagnols

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_SCORE = 5
FIRST_MOVE = 'choose'
VALID_MOVE_CHOICES = ['player', 'computer', 'p', 'c']

# rubocop:disable Metrics/LineLength

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, separator=', ', word='or')
  n = array.size
  if n < 2
    array[0].to_s
  elsif n == 2
    array.join(" #{word} ")
  else
    "#{array.slice(0, n - 1).join(separator.to_s)}#{separator}#{word} #{array[n - 1]}"
  end
end

# rubocop:disable Metrics/AbcSize, MethodLength
def display_board(brd, p_scr, c_scr, game_num)
  system 'clear'
  puts "You're #{PLAYER_MARKER}'s'. Computer's is #{COMPUTER_MARKER}'s."
  puts "The total score is - Player: #{p_scr}; Computer: #{c_scr}"
  puts "The grand winner is the first to win #{WINNING_SCORE} games."
  puts "This is game number #{game_num}."
  puts ""
  puts "  1  |  2  |  3"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "  4  |  5  |  6"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "  7  |  8  |  9"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def center_placement(brd)
  square = empty_squares(brd).sample
  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    brd[square] = COMPUTER_MARKER
  end
end


def player_places_piece!(brd)
  square = ''

  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp
    break if empty_squares(brd).include?(square.to_i) && valid_integer?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square.to_i] = PLAYER_MARKER
end

def computer_places_piece!(brd)

  # offense
  if immediate_win?(brd, COMPUTER_MARKER)
    computer_logic(brd, COMPUTER_MARKER)
  # defense
  elsif immediate_win?(brd, PLAYER_MARKER)
    computer_logic(brd, PLAYER_MARKER)
  # center or random
  else
    center_placement(brd)
  end
end

def place_piece!(brd, who)
  case who
  when 'player'
    player_places_piece!(brd)
  when 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(who)
  case who
  when 'player'
    'computer'
  when 'computer'
    'player'
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def whose_line?(brd, line, who)
  brd.values_at(*line).count(who) == 3
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if whose_line?(brd, line, PLAYER_MARKER)
      return 'Player'
    elsif whose_line?(brd, line, COMPUTER_MARKER)
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def game_over?(p_scr, c_scr)
  p_scr == WINNING_SCORE || c_scr == WINNING_SCORE
end

def immediate_win?(brd, who)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(who) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
  false
end

def computer_logic(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      brd[line[brd.values_at(*line).index(INITIAL_MARKER)]] = COMPUTER_MARKER
      break
    end
  end
end

def valid_answer?(ans)
  answers = ['y', 'yes', 'n', 'no']
  answers.include?(ans)
end

def keep_playing?
  loop do
    prompt("The grand winner is the first to win #{WINNING_SCORE} games. Would you like to play again?")
    answer = gets.chomp
    return answer if valid_answer?(answer)
    prompt("Invalid choice!")
  end
end

def retrieve_first_player
  first_move = ''
  system 'clear'
  loop do
    prompt("Choose who goes first: #{joinor(VALID_MOVE_CHOICES)}")
    first_move = gets.chomp.downcase
    break if VALID_MOVE_CHOICES.include?(first_move)
    prompt("Invalid choice!")
  end
  first_move
end

def match_over?(p_scr, c_scr)
  game_over?(p_scr, c_scr) || keep_playing?.start_with?('n')
end

def display_match_winner(p_scr, c_scr)
  if match_won?(p_scr)
    prompt("Congratulations! You have won with a grand total of #{p_scr} wins!")
  elsif match_won?(c_scr)
    prompt("Uh oh! Looks like Computer has won with a grand total of #{c_scr} wins.")
  else
    prompt("Thanks for playing Tic Tac Toe! Goodbye :)")
  end
end

def match_won?(who)
  who == WINNING_SCORE
end

player_score = 0
computer_score = 0
game_number = 1

loop do
  board = initialize_board

  first_move = retrieve_first_player

  case first_move
  when 'player', 'p'
    current_player = 'player'
  when 'computer', 'c'
    current_player = 'computer'
  end

  loop do
    display_board(board, player_score, computer_score, game_number)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, player_score, computer_score, game_number)

  if someone_won?(board)
    prompt("#{detect_winner(board)} won the round!")
    case detect_winner(board)
    when 'Player'
      player_score += 1
    when 'Computer'
      computer_score += 1
    end
  else
    prompt "It's a tie!"
  end

  prompt("The total score is - Player: #{player_score}; Computer: #{computer_score}")

  break if match_over?(player_score, computer_score)

  game_number += 1
end

display_match_winner(player_score, computer_score)