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

# if we have aces and our hand is greater that 21
#   change one ace to a 1

def aces_1_or_11(hand)
  if hand.sum > 21 && hand.include?(11)
    hand[hand.index(11)] = 1
    hand
  else hand
  end
end

# sum is calclulated 
sample_hand = ["6", "5", "A"]
values = cards_to_values(sample_hand)
p aces_1_or_11(values)
p aces_1_or_11(values).sum