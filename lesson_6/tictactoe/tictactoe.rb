require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagnols

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_SCORE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, separator=', ', word='or')
  n = array.size
  if n < 2
    "#{array[0]}"
  elsif n == 2
    array.join(" #{word} ")
  else
    "#{array.slice(0, n - 1).join("#{separator}")}#{separator}#{word} #{array[n-1]}"
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, p_scr, c_scr, game_num)
  system 'clear'
  puts "You're #{PLAYER_MARKER}'s'. Computer's is #{COMPUTER_MARKER}'s."
  puts "The total score is - Player: #{p_scr}; Computer: #{c_scr}"
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
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  # offense
  if immediate_win?(brd) == true
    computer_logic(brd, COMPUTER_MARKER)
  # defense
  elsif immediate_threat?(brd) == true
    computer_logic(brd, PLAYER_MARKER)
  # random
  else
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def game_over?(p_scr, c_scr)
  p_scr == 5 || c_scr == 5
end

def immediate_threat?(brd)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
end

def immediate_win?(brd)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
end

def computer_logic(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      brd[line[brd.values_at(*line).index(INITIAL_MARKER)]] = COMPUTER_MARKER
      return
    end
  end
end

player_score = 0
computer_score = 0
game_number = 1

loop do
  board = initialize_board

  loop do
    display_board(board, player_score, computer_score, game_number)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
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
    prompt("The total score is - Player: #{player_score}; Computer: #{computer_score}")
  else
    prompt "It's a tie!"
    prompt("The total score is - Player: #{player_score}; Computer: #{computer_score}")
  end

  if game_over?(player_score, computer_score) == true
    break
  else
    prompt("The grand winner is the first to win #{WINNING_SCORE} games. Would you like to play again?")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  game_number += 1

  break if player_score == WINNING_SCORE || computer_score == WINNING_SCORE
end

if player_score == WINNING_SCORE
  prompt("Congratulations! You have won with a grand total of #{player_score} wins!")
elsif computer_score == WINNING_SCORE
  prompt("Uh oh! Looks like Computer has won with a grand total of #{computer_score} wins.")
else
  prompt("Thanks for playing Tic Tac Toe! Goodbye :)")
end

# prompt("Would you like to play again?")
# answer = gets.chomp
# break unless answer.downcase.start_with?('y')

