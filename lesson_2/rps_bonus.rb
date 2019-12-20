require 'pry'

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

MOVE_BEATS = { rock: ['scissors', 'lizard'],
               paper: ['rock', 'spock'],
               scissors: ['paper', 'lizard'],
               spock: ['scissors', 'rock'],
               lizard: ['spock', 'paper'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  MOVE_BEATS[first].include?(second)
end

def display_results(player, computer, player_win, computer_win)
  if win?(player.to_sym, computer)
    prompt("You won!")
    player_win += 1
  elsif win?(computer.to_sym, player)
    prompt("Computer won!")
    computer_win += 1
  else
    prompt("It's a tie")
  end
end

def score
  if win(player.to_sym, computer)
    player_win += 1
  elsif win?(computer.to_sym, player)
    computer_win += 1
  end
  prompt()

def clear
  system('clear') || system('cls')
end

player_score = 0
computer_score = 0

loop do
  clear
  choice = ''
  prompt("Welcome to Rock Paper Scissors Spock Lizard!")

  loop do
    prompt("To play, choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Sorry, but that's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice, player_score, computer_score)

  prompt("Your Score: #{player_score}. Computer's Score: #{computer_score}.")
  binding.pry

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing. Goodbye!")
