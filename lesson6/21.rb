require 'pry'
require 'pry-byebug'
# 21 or 'Black Jack' game
# high level psuedo code:
# 1. Initialize deck
#   - need to pick a data structure to represent the deck
#   - 52 cards: 2-10, JACK, QUEEN, KING, ACE (hearts, diamonds, spades, clubs)
#   - Each card has a value: Aces will either have value of 1 or 11
#   - a method will be needed to determine the Ace value
# 2. Deal cards to player and dealer
#   - dealer and player both start the game with 2 cards at random
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

DECK = ['2','3','4','5','6','7','8','9','J','Q','K','A']

def prompt(msg)
  puts "=> #{msg}"
end

# _______________Dealing a card logic__________

def initial_hand(dealer_cards, player_cards)
  2.times { dealer_cards << random_card }
  2.times { player_cards << random_card }
end

def random_card
  DECK.sample
end

def hit(cards)
  cards << random_card
end

# _______________ Main loop logic _______________

def welcome
  system('clear')
  prompt("Welcome to the table!")
  puts ''
  prompt('Rules of 21:')
  puts ''
end

def ready?(first_time = true)
  puts ''
  if first_time == true
    prompt("Are you ready to play?")
  else prompt('Would you like to play again?')
  end
  prompt("(press Enter to play or type 'exit' to leave the game.)")
  gets.chomp.downcase
end

# ______________ Display Logic _________________

def display_cards(cards, dealer = true)
  hand = cards.map {|card| "[" + card + "]"}
  if dealer == true
    hand[0] = "[?]"
  end
  puts hand.join(" ")
end

def dealer_still_in_the_game(dealer_playing)
  if dealer_playing.empty?
    ''
  else
    sleep 1
    "DEALER STAYS"
  end
end

def pause(dealer_playing)
  if dealer_playing.empty?
  else sleep 1
  end
end

def display(dealer_cards, player_cards, dealer_playing)
  system('clear')
  puts "Dealer Cards:"
  display_cards(dealer_cards)
  puts "Your Cards:"
  display_cards(player_cards, false)
  puts ''
  display_score(dealer_cards, player_cards)
  puts ''
  puts "#{dealer_still_in_the_game(dealer_playing)}"
  pause(dealer_playing)
end

def display_score(dealer, player)
  puts "You have: #{tally_score(player)}"
  puts "Dealer showing: #{tally_score(dealer, true)}"
end

# ______________ Scoring Logic ______________

def cards_to_values(cards)
  hand = cards.map do |card|
    if card == 'A'
      card = 11
    elsif card.to_i == 0
      card = 10
    else card = card.to_i
    end
  end
  hand
end

def aces_1_or_11(hand)
  if hand.sum > 21 && hand.include?(11)
    hand.select! { |card| card != 11 }
    hand << 1
  else hand
  end
end

def tally_score(cards, dealer = false)
  hand = cards_to_values(cards)
  hand = aces_1_or_11(hand)
  dealer == true ? hand.sum - hand[0] : hand.sum
end

# __________________ Turn Logic ___________________

def hit_or_stay?
  puts ''
  answer = ''
  prompt("HIT OR STAY? ('h' to hit, 's' to stay)")
  loop do
    answer = gets.chomp
    break if answer.downcase == 'h' || answer.downcase == 's'
    prompt('Please choose to either hit or stay.')
  end
  answer.downcase == 'h' ? true : false
end

def player_turn(cards)
  if hit_or_stay? == true
    hit(cards)
  else cards
  end
end

def dealer_turn(cards, dealer_playing)
  hand = cards_to_values(cards)
  hand.sum < 17 ? hit(cards) : dealer_playing << 1
end

#_________________________________________________________

# Main loop
loop do
  welcome
  break if ready?(true) == "exit" 

  # Gameplay loop
  dealer_cards = []
  player_cards = []
  dealer_playing = []
  
  system('clear')
  initial_hand(dealer_cards, player_cards)
  
  loop do
    display(dealer_cards, player_cards, dealer_playing)
    player_turn(player_cards)
    dealer_turn(dealer_cards, dealer_playing)
    # need to:: 
    #           -evaluate the score
    #           -decide winner
    #           -display winner and also reveal dealer card would be cool...
  end
  break if ready?(false) == "exit"
end