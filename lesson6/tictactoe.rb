require 'pry'
require 'pry-byebug'

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

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == EMPTY_MARKER }
end

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

# _______________Computer logic___________________

def computer_move(brd, mode = 'offensive')
  attack_defend_line = nil
  check_1_sq = PLAYER_MARKER
  check_2_sq = COMPUTER_MARKER
  
  if mode == 'defensive'
    check_1_sq = COMPUTER_MARKER
    check_2_sq = PLAYER_MARKER
  end
  
  WINNING_LINES.each do |line|
    current_line = brd.values_at(*line)
    if current_line.any?(check_1_sq)
      next
    elsif current_line.count(check_2_sq) == 2
      attack_defend_line = line
    end
  end
  attack_defend_line
end

def take_square(brd, line_of_sq)
  square = line_of_sq.select { |num| brd[num] == ' ' }
  square[0]
end

def pick_5(brd)
  if brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

# turn into case statement. precedence = offensive, defensive, pick 5, random
def computer_turn!(brd)
  offensive_array = computer_move(brd)
  defensive_array = computer_move(brd, 'defensive')
  
  if !!computer_move(brd)
    brd[take_square(brd, offensive_array)] = COMPUTER_MARKER
  elsif !!computer_move(brd, 'defensive')
    brd[take_square(brd, defensive_array)] = COMPUTER_MARKER
  else
    pick_5(brd)
  end
end
#__________________________________________________________

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

#____________________Scoring logic_________________________
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

def final_score(score)
  display_score(score)
  if score['Player'] < score['Computer']
    puts "Computer won match!"
  elsif score['Player'] > score['Computer']
    puts "Player won match!"
  else puts "Match is a tie!"
  end
end

def reached_5?(brd, score)
  if score.any? { |_, v| v == 5 }
    final_score(score)
    true
  else false
  end
end
#___________________________________________________________

def who_goes_first(answer)
  case answer.downcase
  when 'p'
    $goes_first = 'player'
  when 'c'
    $goes_first = 'computer'
  else puts "Please choose either p or c"
  end
end

score = { "Player" => 0, "Computer" => 0 }

loop do
  prompt("Who is going first? Player or Computer? (p or c)")

  loop do
    answer = gets.chomp
    who_goes_first(answer)
    break if $goes_first != 'choose'
  end

  loop do
    board = initialize_board

    loop do
      display_board(board)
      display_score(score)

      if $goes_first == 'player'
      player_turn!(board)
      computer_turn!(board)
      else computer_turn!(board)
      display_board(board)
      player_turn!(board)
      end
# the break condition is not being executed on the last go around if comp goes first
# because it executes player turn method last and since there's no more sqs game
# gets stuck!
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