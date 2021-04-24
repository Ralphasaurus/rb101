require 'pry'
require 'pry-byebug'

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
  if hand.include?(11)
    until hand.sum < 21 do
      hand[hand.index(11)] = 1
    end
    hand
  else hand
  end
end

def tally_score(cards, dealer = false)
  hand_integers = cards_to_values(cards)
  hand_altered = aces_1_or_11(hand_integers)
  dealer == true ? hand_altered.sum - hand_altered[0] : hand_altered.sum
end

def calculate_score(dealer, player)
  p dealer[:score] = tally_score(dealer[:cards])
  p player[:score] = tally_score(player[:cards])
end

  dealer = { :cards => ['4', '9', 'A'],
             :decision => '',
             :score => 0
           }
  player = { :cards => ['A', 'A', 'Q', '3', 'A'],
             :decision => '',
             :score => 0
           } 
calculate_score(dealer, player)