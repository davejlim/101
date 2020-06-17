# RB101 - Lesson 6 Slightly Larger Problems - Assignment: Twenty-One

require 'pry'
require 'pry-byebug'

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

DECK = {'S' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],    # spades
        'H' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],    # hearts
        'D' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],    # diamonds
        'C' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']}    # clubs

VALUES = { '2' => 2,
           '3' => 3,
           '4' => 4,
           '5' => 5,
           '6' => 6,
           '7' => 7,
           '8' => 8,
           '9' => 9,
           '10' => 10,
           'J' => 10,       # jack
           'Q' => 10,       # queen
           'K' => 10,       # king
           'A' => 11,       # big ace
           'a' => 1 }        # little ace

BLACKJACK = 21

VALID_CHOICES = ['hit', 'h', 'stay', 's']

PLAY_AGAIN_CHOICES = ['yes', 'y', 'no', 'n']

def prompt(msg)
  puts "=> #{msg}"
end

def choose_card
  card = []
  suit = DECK.keys.sample
  value = DECK[suit].sample
  DECK[suit].slice!(DECK[suit].index(value))
  card = [suit, value]
end

def deal_card(who)
  who << choose_card
end

def calculate_value(who)
  value = 0
  who.each { |card_value| value += VALUES[card_value[1]] }
  value
end

def bust?(who)
  calculate_value(who) > BLACKJACK
end

def aces_select(who)
  who.select { |card| card[1] == 'A' }
end

def aces?(who)
  !aces_select(who).empty?
end

def ace_conversion(who)
  old_aces = aces_select(who)
  old_aces.each do |card| 
    card[1] = 'a' if card[1] == 'A'
    break
  end
  old_aces
end

def turn_logic(who, name)
  loop do
    if bust?(who) && aces?(who)
      ace_conversion(who)
    elsif bust?(who)
      prompt("#{name} cards are: #{who}.")
      prompt("#{name} total is #{calculate_value(who)}.")
      prompt("#{name} card values are greater than 21 and busted!")
      return 'busted'
    else
      prompt("#{name} cards are: #{who}.")
      prompt("#{name} total is #{calculate_value(who)}.")
      return calculate_value(who)
    end
  end
end

def player_choice
  loop do
    prompt "Would you like to hit or stay?"
    choice = gets.chomp.downcase
    return choice if VALID_CHOICES.include?(choice)
    prompt "Uh oh! That was an invalid selection!"
  end
end

def player_turn(who)
  loop do
    return 'busted' if bust?(who)
    case player_choice
    when 'hit', 'h'
      deal_card(who)
      turn_logic(who, 'Your')
    when 'stay', 's'
      turn_logic(who, 'Your')
      break
    end
  end
end

def dealer_turn(who)
  loop do
    return 'busted' if bust?(who)
    prompt("Dealer's cards are: #{who}.")
    break if calculate_value(who) > 17
    deal_card(who)
    prompt "Dealer hits!"
    turn_logic(who, "Dealer's")
  end
end

def total_msg(plr, dlr)
  prompt("Your cards totaled #{calculate_value(plr)} compared to the dealer's #{calculate_value(dlr)}.")
end

def compare_values(plr, dlr, wnr)
  if wnr == 'player'
    prompt("Congratulations! You beat the dealer!")
  elsif wnr == 'dealer'
    prompt("Oh no! The dealer beat you!")
  elsif calculate_value(plr) > calculate_value(dlr)
    prompt("Congratulations! You beat the dealer!")
    total_msg(plr, dlr)
  elsif calculate_value(dlr) > calculate_value(plr)
    prompt("Oh no! The dealer beat you!")
    total_msg(plr, dlr)
  else
    prompt("You tied with the dealer!")
  end
end

def play_again?
  loop do
    prompt "Would you like to play again?"
    answer = gets.chomp.downcase
    return answer if PLAY_AGAIN_CHOICES.include?(answer)
    prompt "Uh oh! That's not a valid response!"
  end
end

loop do
  system 'clear'

  player_cards = []
  dealer_cards = []
  player_value = 0
  dealer_value = 0
  winner = ''

  prompt "Welcome to Blackjack!"
  prompt "Try to beat the dealer, but make sure you don't go above 21 and bust."

  2.times do
    deal_card(player_cards)
    deal_card(dealer_cards)
  end
  
  puts "Your cards are #{player_cards}."
  puts "Dealer has #{dealer_cards[0]} and an unknown card."

  loop do
    if player_turn(player_cards) == 'busted'
      winner = 'dealer'
      compare_values(player_cards, dealer_cards, winner)
    elsif dealer_turn(dealer_cards) == 'busted'
      winner = 'player'
      compare_values(player_cards, dealer_cards, winner)
    else
      compare_values(player_cards, dealer_cards, winner)
    end
    break
  end

  # compare_values(player_cards, dealer_cards, winner)

  break if play_again?.start_with?('n')

end

prompt "Thanks for playing!"