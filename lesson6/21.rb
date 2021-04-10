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

DECK = { 'Hearts' => [2,3,4,5,6,7,8,9,'J','Q','K','A'],
         'Spades' => [2,3,4,5,6,7,8,9,'J','Q','K','A'],
         'Clubs' => [2,3,4,5,6,7,8,9,'J','Q','K','A'],
         'Diamonds' => [2,3,4,5,6,7,8,9,'J','Q','K','A']
        }

def prompt(msg)
  puts "=> #{msg}"
end

def card_format(front, back)
  puts "[#{front}] [#{back}]"
end

def random_card
  p DECK[DECK.keys.sample].sample
end

# _______________Main loop logic_______________

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
  gets.chomp
end

def display()
  system('clear')
  puts "Dealer Cards:"
  # card_format(front, back)
  puts "Your Cards:"
  # card_format(front, back)
end

#_________________________________________________________

# Main loop
loop do
  welcome
  break if ready?(true) == "exit" 
  
  # Gameplay loop goes here
  display

  break if ready?(false) == "exit"
end
