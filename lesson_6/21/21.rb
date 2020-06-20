# RB101 - Lesson 6 Slightly Larger Problems - Assignment: Twenty-One

require 'pry'
require 'pry-byebug'

# rubocop: disable LineLength
DECK = { 'S' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'], # spades
         'H' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],  # hearts
         'D' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],  # diamonds
         'C' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'] } # clubs
# rubocop: enable LineLength

SUITS = { 'S' => 'Spades', # spades
          'H' => 'Hearts',  # hearts
          'D' => 'Diamonds',  # diamonds
          'C' => 'Clubs' } # clubs

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
           'a' => 1 }       # little ace

BLACKJACK = 21
DEALER_STAYS = 17

VALID_CHOICES = ['hit', 'h', 'stay', 's']

PLAY_AGAIN_CHOICES = ['yes', 'y', 'no', 'n']

def prompt(msg)
  puts "=> #{msg}"
end

def choose_card(dck)
  loop do
    suit = dck.keys.sample
    value = dck[suit].sample
    if dck[suit].size > 0
      dck[suit].slice!(dck[suit].index(value)) 
      return [suit, value]
    end
  end
end

def deal_card(who, dck)
  who << choose_card(dck)
end

def joinand(arr, sep = ', ', wrd = 'and ')
  n = arr.size - 1
  new_str = arr.slice(0, n).join(sep) + sep + wrd + arr.last
end

def translate_cards(who)
  translated = []
  if who.flatten.size > 2
    who.each do |card|
      translated << "#{card[1]} of #{SUITS[card[0]]}"
    end
    return joinand(translated) if who.flatten.size > 2
  else
    "#{who[1]} of #{SUITS[who[0]]}"
  end
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

def display_cards(who, name)
  puts "#{name} cards are: #{translate_cards(who)}."
  puts "#{name} total is #{calculate_value(who)}."
end

def aces_bust(who)
  ace_conversion(who) if bust?(who) && aces?(who)
end

def turn_logic(who, name)
  loop do
    if bust?(who) && aces?(who)
      ace_conversion(who)
    elsif bust?(who)
      display_cards(who, name)
      puts "#{name} card values are greater than 21 and busted!"
      return 'busted'
    else
      display_cards(who, name)
      return calculate_value(who)
    end
  end
end

def player_choice
  loop do
    prompt "Would you like to (h)it or (s)tay?"
    choice = gets.chomp.downcase
    return choice if VALID_CHOICES.include?(choice)
    puts 'Uh oh! That was an invalid selection!'
  end
end

def player_turn(who, dck)
  loop do
    aces_bust(who)
    return 'busted' if bust?(who)
    case player_choice
    when 'hit', 'h'
      deal_card(who, dck)
      turn_logic(who, 'Your')
    when 'stay', 's'
      turn_logic(who, 'Your')
      break
    end
  end
end

def dealer_turn(who, dck)
  loop do
    return 'busted' if bust?(who)
    break if calculate_value(who) >= DEALER_STAYS
    puts "Dealer's cards are: #{translate_cards(who)}."
    deal_card(who, dck)
    puts "Dealer hits!"
    turn_logic(who, "Dealer's")
  end
end

# rubocop: disable LineLength
def total_msg(plr, dlr)
  puts "Your cards totaled #{calculate_value(plr)} compared to the dealer's #{calculate_value(dlr)}."
end
# rubocop: enable LineLength

def compare_values(plr, dlr, wnr)
  if wnr == 'player'
    puts "Congratulations! You beat the dealer!"
    'player'
  elsif wnr == 'dealer'
    puts "Oh no! The dealer beat you!"
    'dealer'
  elsif calculate_value(plr) > calculate_value(dlr)
    puts "Congratulations! You beat the dealer!"
    'player'
  elsif calculate_value(dlr) > calculate_value(plr)
    puts "Oh no! The dealer beat you!"
    'dealer'
  else
    puts "You tied with the dealer!"
  end
end

def play_again?
  loop do
    prompt "Would you like to play again?"
    answer = gets.chomp.downcase
    return answer if PLAY_AGAIN_CHOICES.include?(answer)
    puts "Uh oh! That's not a valid response!"
  end
end

def match_score(pscr, dscr)
  puts "Player Wins: #{pscr}; Dealer Wins: #{dscr}"
end

def next_round
  loop do
    prompt "Hit Enter when you're ready for the next round!"
    return 'play' if gets == "\n"
    prompt "Uh oh! You didn't hit Enter. Do you want to play the next round?"
    answer = gets.chomp.downcase
    return answer if PLAY_AGAIN_CHOICES.include?(answer)
    puts "Uh oh! That's not a valid response!"
  end
end

def end_message(pscr, dscr)
  puts
  puts "-----------------------------"
  puts "Match is Over!"
  match_score(pscr, dscr)
  puts "-----------------------------"
  puts
end

loop do
  player_score = 0
  dealer_score = 0

  loop do
    system 'clear'

    new_deck = DECK.dup
    player_cards = []
    dealer_cards = []
    winner = ''

    puts "Welcome to Blackjack!"
    puts "Try to beat the dealer, but make sure you don't go above 21 and bust."
    puts "First person to win 5 games, wins the match!"
    match_score(player_score, dealer_score)

    2.times do
      deal_card(player_cards, new_deck)
      deal_card(dealer_cards, new_deck)
    end

    puts "Your cards are #{translate_cards(player_cards)}."
    puts "Dealer has #{translate_cards(dealer_cards[0])} and an unknown card."

    if player_turn(player_cards, new_deck) == 'busted'
      winner = 'dealer'
    elsif dealer_turn(dealer_cards, new_deck) == 'busted'
      winner = 'player'
    end

    total_msg(player_cards, dealer_cards)

    case compare_values(player_cards, dealer_cards, winner)
    when 'player'
      player_score += 1
    when 'dealer'
      dealer_score += 1
    end

    match_score(player_score, dealer_score)

    break if player_score >= 5 || dealer_score >= 5

    case next_round
    when 'play'
      next
    when 'y', 'yes'
      next
    when 'n', 'no'
      break
    end
  end

  end_message(player_score, dealer_score)

  if player_score == 5
    puts "Congratulations on beating the house!"
  elsif dealer_score == 5
    puts "The house always wins! Try again next time."
  end

  break if play_again?.start_with?('n')
end
puts "Thanks for playing!"
