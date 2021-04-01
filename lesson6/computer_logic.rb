def attack_or_defend(brd, mode = 'offensive')
  attack_defend_line = nil
  check_1_sq = PLAYER_MARKER
  check_2_sq = COMPUTER_MARKER
  
  if mode == 'defensive'
    check_1_sq = COMPUTER_MARKER
    check_2_sq = PLAYER_MARKER
  end
# below checking to see if any markers are in the squares
# first condition is checking to see if there is 1 square taken
# if condition true it uses next keyword to break out and leave variable as nil
# second condition is checking to see if there are 2 squares taken
# if true it reassigns the variable to the current 'line' array where trouble
# or an opportunity is...
def current_board_state(brd) # returns nested arrays of each winning line and their state.
  current_state_of_lines = []
  WINNING_LINES.each do |line|
    current_state_of_lines << brd.values_at(*line)
  end
end

def line_needs_action(brd, marker)
  current_board_state(brd).each |sub_array|
    if sub_array.count(marker) == 2 && sub_array.count(" ") == 1
      sub_array
    end
end

def take_square(brd, line_array)
  square = line_array.select { |num| brd[num] == ' ' }
  square[0]
end

def choose_middle_square(brd)
  if brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

def computer_turn!(brd)
  attack = line_needs_action(COMPUTER_MARKER)
  defend = line_needs_action(PLAYER_MARKER)
  if !!attack
    take_square(brd, attack)
  elsif !!defend
    take_square(brd, defend)
  else
    choose_middle_square(brd)
  end
end
