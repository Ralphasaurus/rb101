PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
EMPTY_MARKER = ' '
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
$goes_first = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# ________________________Board Logic_____________________________

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts "You're #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s"
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "================="
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "================="
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY_MARKER }
  new_board
end

# _______________Computer logic___________________

def line_needs_action(brd, marker)
  WINNING_LINES.select do |line|
    brd.values_at(*line).count(marker) == 2 &&
      brd.values_at(*line).count(EMPTY_MARKER) == 1
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == EMPTY_MARKER }
end

def take_square(brd, line_array)
  square = line_array.select { |num| brd[num] == ' ' }
  brd[square[0]] = COMPUTER_MARKER
end

def choose_middle_square(brd)
  if brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

def computer_turn!(brd)
  attack = line_needs_action(brd, COMPUTER_MARKER)
  defend = line_needs_action(brd, PLAYER_MARKER)
  if !attack.empty?
    take_square(brd, attack.flatten)
  elsif !defend.empty?
    take_square(brd, defend.flatten)
  else choose_middle_square(brd)
  end
end

# ____________________Player Logic________________________

def player_turn!(brd)
  square = ''
  loop do
    prompt("Make your move: #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Choice not available..."
  end
  brd[square] = PLAYER_MARKER
end

# ______________________Win/End Game Logic_________________________

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

# ____________________Bonus Formating______________________

def joinor(array, delimit = ', ', word = 'or')
  case array.size
  when 0
    ''
  when 1
    array.first.to_s
  when 2
    array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimit)
  end
end

# ____________________Scoring logic_________________________

def display_score(score)
  puts "Player points:   #{score['Player']}"
  puts "Computer points: #{score['Computer']}"
end

def increment_score(player, score)
  player == "tie" ? score.each { |k, _| score[k] += 1 } : score[player] += 1
end

def clear_score(score)
  score.each { |k, _| score[k] = 0 }
end

def continue
  prompt("Press Enter to continue")
  gets
end

def reached_5?(score)
  if score.any? { |_, v| v == 5 }
    final_score(score)
    true
  else false
  end
end

def final_score(score)
  display_score(score)
  if score['Player'] < score['Computer']
    puts "Computer won match!"
  elsif score['Player'] > score['Computer']
    puts "Player won match!"
  else puts "Match is a tie!"
  end
end

# _________________Initial Setup and Turn Logic____________________

def who_goes_first(answer)
  case answer.downcase
  when 'p'
    $goes_first = 'player'
  when 'c'
    $goes_first = 'computer'
  else puts "Please choose either p or c"
  end
end

def display(board, score)
  display_board(board)
  display_score(score)
end

def place_piece!(brd, player)
  if player == 'player'
    player_turn!(brd)
  else computer_turn!(brd)
  end
end

def alternate_player(current)
  current == 'player' ? 'computer' : 'player'
end

score = { "Player" => 0, "Computer" => 0 }

# ________________Main Game___________________

loop do
  prompt("Who is going first? Player or Computer? (p or c)")

  loop do
    answer = gets.chomp
    who_goes_first(answer)
    break if $goes_first != 'choose'
  end

  loop do
    board = initialize_board
    current_player = $goes_first
    loop do
      display(board, score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      puts "#{detect_winner(board)} won!"
      increment_score(detect_winner(board), score)
    else
      puts "It's a tie!"
      increment_score("tie", score)
    end
    continue
    break if reached_5?(board, score)
  end

  prompt("Play again? (y or n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  clear_score(score)
end
prompt("Thanks for playing! Bye!")
