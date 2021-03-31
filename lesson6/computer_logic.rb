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
def opportunity_to_win?(brd)
  WINNING_LINES.each do |line|
    current_line = brd.values_at(*line)
    if current_line.any?(PLAYER_MARKER)
      false
    elsif current_line.count(COMPUTER_MARKER) == 2
      true
    end
  end
end

def need_to_defend?(brd)
  WINNING_LINES.each do |line|
    current_line = brd.values_at(*line)
    if current_line.any?(COMPUTER_MARKER)
      false
    elsif current_line.count(PLAYER_MARKER) == 2
      true
    end
  end
end

def take_square(brd, line_of_sq)
  square = line_of_sq.select { |num| brd[num] == ' ' }
  square[0]
end

def choose_middle_square(brd)
  if brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

def computer_turn!(brd)
  if opportunity_to_win?(brd)
    choose_open_square(brd, critical_array)
  elsif need_to_defend?(brd)
    brd[choose_open_square(brd, defensive_array)] = COMPUTER_MARKER
  else
    choose_middle_square(brd)
  end
end
