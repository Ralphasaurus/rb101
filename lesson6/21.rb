require 'pry'
require 'pry-byebug'

DECK = ['2', '3', '4', '5', '6', '7', '8', '9', 'J', 'Q', 'K', 'A']

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
end

def ready?(first_time)
  puts ''
  if first_time == true
    prompt("Are you ready to play?")
  else prompt('Would you like to play again?')
  end
  prompt("(press Enter to play or type 'exit' to leave the game.)")
  gets.chomp.downcase
end

# ______________ Display Logic _________________

def display_cards(cards, hide_dealer_card)
  hand = cards.map { |card| "[#{card}]" }
  if hide_dealer_card == true
    hand[0] = "[?]"
  end
  puts hand.join(" ")
end

def display_decision(dealer, player, turn)
  current_decision = if turn == true
                       player[:decision]
                     else dealer[:decision]
                     end
  puts current_decision
  sleep(1.5)
end

def display(dealer, player, hide_dealer_card)
  system('clear')
  puts "Dealer Cards:"
  display_cards(dealer[:cards], hide_dealer_card)
  puts "Your Cards:"
  display_cards(player[:cards], false)
  puts ''
  display_score(dealer, player, hide_dealer_card)
  puts ''
end

def display_all_scores(dealer, player)
  puts "You had: #{player[:score]}"
  puts "Dealer had: #{dealer[:score]}"
end

def hide_dealer_score(dealer, player)
  puts "You have: #{player[:score]}"
  puts "Dealer showing: #{dealer_score_minus_first_card(dealer)}"
end

def display_score(dealer, player, hide_dealer_card)
  if hide_dealer_card == false
    display_all_scores(dealer, player)
  else hide_dealer_score(dealer, player)
  end
end

def display_winner(game_over)
  msg = "*** #{game_over[0]} ***"
  sleep(0.5)
  puts msg.center(60, ' ')
end

# ______________ Scoring Logic ______________

def cards_to_values(cards)
  cards.map do |card|
    if card == 'A'
      11
    elsif card.to_i == 0
      10
    else card.to_i
    end
  end
end

def aces(hand)
  if hand.include?(11)
    loop do
      break if hand.sum <= 21 || !hand.include?(11)
      hand[hand.index(11)] = 1
    end
  end
  hand
end

def tally_score(cards)
  aces(cards_to_values(cards)).sum
end

def calculate_score(dealer, player)
  dealer[:score] = tally_score(dealer[:cards])
  player[:score] = tally_score(player[:cards])
end

def dealer_score_minus_first_card(dealer)
  first_card = []
  first_card << dealer[:cards][0]
  tally_score(dealer[:cards]) - tally_score(first_card)
end

# __________________ Turn Logic ___________________

def hit_or_stay?
  puts ''
  answer = ''
  prompt("Press 'H' to hit.  Press 'S' to stay.")
  loop do
    answer = gets.chomp
    break if answer.downcase == 'h' || answer.downcase == 's'
    prompt('Please choose to either hit or stay.')
  end
  answer.downcase == 'h'
end

def add_card_to_hand(cards, new_card)
  cards << new_card
end

def hit(cards)
  new_card = random_card
  add_card_to_hand(cards, new_card)
  new_card
end

def player_turn(player, dealer)
  turn = true
  player[:decision] = if hit_or_stay? == true
                        "You drew a: #{hit(player[:cards])}"
                      else "You choose to stay..."
                      end
  display_decision(dealer, player, turn)
end

def dealer_turn(dealer, player)
  turn = false
  cards = cards_to_values(dealer[:cards])
  dealer[:decision] = if tally_score(cards) < 17
                        "Dealer drew a: #{hit(dealer[:cards])}"
                      else "Dealer chooses to stay..."
                      end
  display_decision(dealer, player, turn)
end

def who_busted(player)
  if player[:score] > 21
    "Player BUSTED!!"
  else "Dealer BUSTED!!"
  end
end

def anyone_bust?(dealer, player, game_over)
  if (player[:score] > 21) || (dealer[:score] > 21)
    game_over << who_busted(player)
  end
end

def both_stay?(dealer, player, game_over)
  if /stay/ =~ dealer[:decision] && /stay/ =~ player[:decision]
    game_over << decide_winner(dealer[:score], player[:score])
  end
end

def have_21?(dealer, player, game_over)
  if player[:score] == 21
    game_over << decide_winner(dealer[:score], player[:score])
  end
end

def evaluate_state(dealer, player, game_over)
  both_stay?(dealer, player, game_over)
  anyone_bust?(dealer, player, game_over)
  have_21?(dealer, player, game_over)
end

def decide_winner(dealer_score, player_score)
  if dealer_score > player_score
    "DEALER WINS"
  elsif player_score > dealer_score
    "YOU WON"
  else "IT'S A TIE"
  end
end

# _________________________________________________________

# Main loop
loop do
  system("clear")
  welcome
  break if ready?(true) == "exit"

  dealer = { cards: [],
             decision: '',
             score: 0 }

  player = { cards: [],
             decision: '',
             score: 0 }

  game_over = []

  system('clear')
  initial_hand(dealer[:cards], player[:cards])
  calculate_score(dealer, player)
  display(dealer, player, true)

  # Match Loop
  loop do
    player_turn(player, dealer)
    calculate_score(dealer, player)
    evaluate_state(dealer, player, game_over)

    break if !game_over.empty?

    dealer_turn(dealer, player)
    calculate_score(dealer, player)
    evaluate_state(dealer, player, game_over)

    display(dealer, player, true)
    break if !game_over.empty?
  end

  display(dealer, player, false)
  display_winner(game_over)
  break if ready?(false) == "exit"
end
