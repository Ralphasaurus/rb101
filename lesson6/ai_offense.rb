# The defensive minded AI is pretty cool, but it's still not performing
# as well as it could because if there are no impending threats, it will
# pick a square at random. We'd like to make a slight improvement on that.
# We're not going to add in any complicated algorithm (there's an extra bonus
# below on that), but all we want to do is piggy back on our
# find_at_risk_square from bonus #3 above and turn it into an attacking
# mechanism as well. The logic is simple: if the computer already has 2
# in a row, then fill in the 3rd square, as opposed to moving at random.

# // if computer already has 2 in a row
# // fill in 3rd square instead of randomly
def on_the_offensive(brd)
  attack = []
  WINNING_LINES.each do |line|
    current_line = brd.values_at(*line)
    if current_line.count(COMPUTER_MARKER) == 2
      attack = line
    end
  attack # returns array that is the best attack vector
end

def determine_threat(brd)
  threat_line = []
  WINNING_LINES.each do |line|
    current_line = brd.values_at(*line)
    if current_line.any?(COMPUTER_MARKER)
      next
    elsif current_line.count(PLAYER_MARKER) == 2
      threat_line = line
    end
  end
  threat_line
end