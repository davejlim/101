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

def ace_conversion(who)
  old_aces = who.select { |card| card[1] == 'A' }
  old_aces.each do |card| 
    card[1] = 'a' if card[1] == 'A'
    break
  end
  old_aces
end

player_cards = []
dealer_cards = []
player_value = 0
dealer_value = 0

2.times do
  deal_card(player_cards)
  deal_card(dealer_cards)
end

p player_cards
p dealer_cards

loop do
  prompt "Would you like to hit or stay?"
  choice = gets.chomp.downcase

  case choice
  when 'hit'
    deal_card(player_cards)
    p player_cards
  when 'stay'
    break
  end
end

p player_value = calculate_value(player_cards)