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
  system("clear")
end

# ______________ Display Logic _________________

def display_cards(cards, show_first = false)
  hand = cards.map {|card| "[" + card + "]"}
  if show_first == false
    hand[0] = "[?]"
  end
  puts hand.join(" ")
end

def display(dealer, player, show_first = false)
  system('clear')
  puts "Dealer Cards:"
  display_cards(dealer[:cards], show_first)
  puts "Your Cards:"
  display_cards(player[:cards], true)
  puts ''
  display_score(dealer, player, show_first)
  puts ''
  puts "#{dealer[:decision]}"
end

def display_score(dealer, player, show_first)
  text = 'showing'
  show_first == false ? text : text = "had"
  puts "You have: #{player[:score]}"
  puts "Dealer #{text}: #{tally_score(dealer[:cards], !show_first)}"
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

def calculate_score(dealer, player)
  dealer[:score] = tally_score(dealer[:cards])
  player[:score] = tally_score(player[:cards])
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

def hit(cards)
  cards << random_card
end

def player_turn(player)
  if hit_or_stay? == true
    hit(player[:cards])
    player[:decision] = "PLAYER HITS"
  else player[:decision] = "PLAYER STAYS"
  end
end

def dealer_turn(dealer)
  cards = cards_to_values(dealer[:cards])
  if cards.sum < 17
    hit(dealer[:cards])
    dealer[:decision] = "DEALER HITS"
  else dealer[:decision] = "DEALER STAYS"
  end
end

def who_busted(dealer_score, player_score)
  if dealer_score > 21
    "Dealer BUSTED!!"
  else "Player BUSTED!!"
  end
end

def anyone_bust?(dealer_score, player_score)
  if (dealer_score > 21) || (player_score > 21)
    true
  else false
  end
end

def both_stay?(dealer, player)
  if dealer == "DEALER STAYS" && player == "PLAYER STAYS"
    true
  else false
  end
end

def anyone_have_21?(dealer, player)
  if dealer == 21 || player == 21
    true
  else false
  end
end

def evaluate_state(dealer, player, game_over)
  if both_stay?(dealer[:decision], player[:decision])
    game_over << decide_winner(dealer[:score], player[:score])
  elsif anyone_bust?(dealer[:score], player[:score])
    game_over << who_busted(dealer[:score], player[:score])
  elsif anyone_have_21?(dealer[:score], player[:score])
    game_over << black_jack(dealer[:score], player[:score])
  else game_over = []
  end
end

def black_jack(dealer_score, player_score)
  if dealer_score > player_score
    "DEALER HAS BLACKJACK!"
  else "YOU HAVE BLACKJACK!"
  end
end

def decide_winner(dealer_score, player_score)
  if dealer_score > player_score
    "DEALER WINS"
  elsif player_score > dealer_score
    "YOU WON"
  else "IT'S A TIE"
  end
end

def display_winner(game_over)
  prompt("#{game_over[0]}")
end

#_________________________________________________________

# Main loop
loop do
  system("clear")
  welcome
  break if ready?(true) == "exit" 

  dealer = { :cards => [],
             :decision => '',
             :score => 0
           }
  player = { :cards => [],
             :decision => '',
             :score => 0
           }

  game_over = []

  system('clear')
  initial_hand(dealer[:cards], player[:cards])
  calculate_score(dealer, player)

  loop do
    display(dealer, player)

    player_turn(player)
    calculate_score(dealer, player)
    display(dealer, player)
    evaluate_state(dealer, player, game_over)
    break if !game_over.empty?

    dealer_turn(dealer)
    calculate_score(dealer, player)
    display(dealer, player)
    evaluate_state(dealer, player, game_over)
    break if !game_over.empty?

# need to fix edge cases... multipe Aces are being counted as 1...


  end
  display(dealer, player, true)
  display_winner(game_over)

  break if ready?(false) == "exit"
end