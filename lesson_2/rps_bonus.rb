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

def display_results(player, computer)
  if win?(player.to_sym, computer)
    prompt("You won this match!")
  elsif win?(computer.to_sym, player)
    prompt("Computer won this match!")
  else
    prompt("It's a tie")
  end
end

def score(player, computer, which_score)
  if win?(player.to_sym, computer)
    which_score[0] += 1
  elsif win?(computer.to_sym, player)
    which_score[1] += 1
  end
end

def win_condition?(win_count)
  win_count.include?(5)
end

def clear
  system('clear') || system('cls')
end

loop do
  clear
  choice = ''
  player_computer_score = [0, 0] # player score is first and computer score is second in array
  prompt('Welcome to Rock Paper Scissors Spock Lizard! The grand winner is the first person to win 5 matches.')

  loop do
    loop do
      prompt("To play, choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("Sorry, but that's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    score(choice, computer_choice, player_computer_score)

    prompt("Your Score: #{player_computer_score[0]}. Computer's Score: #{player_computer_score[1]}.")

    break if win_condition?(player_computer_score)
  end

  if player_computer_score[0] == 5
    prompt('Congratulations on being the grand winner of the game!')
  else
    prompt('Defeat! Please try again.')
  end

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing. Goodbye!')
