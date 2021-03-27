# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
EMPTY_MARKER = ' '

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system "clear"
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


# CREATE THE BOARD HASH
def initialize_board()
  new_board = {}
  (1..9).each {|num| new_board[num] = EMPTY_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == EMPTY_MARKER}
end

def player_turn!(brd)
  square = ''
  loop do
    prompt("Make your move: #{empty_squares(brd)}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Choice not available..."
  end
  brd[square] = PLAYER_MARKER
end

def computer_turn!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  false
end

board = initialize_board()
display_board(board)

loop do
  player_turn!(board)
  computer_turn!(board)
  display_board(board)
break if someone_won?(board) || board_full?(board)
end

display_board(board)

