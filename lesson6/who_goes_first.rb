# c) Can you change the game so that the computer moves first? Can you make
# this a setting at the top (i.e. a constant), so that you could play the game
# with either player or computer going first? Can you make it so that if the constant
# is set to "choose", then your game will prompt the user to determine who goes
# first? Valid options for the constant can be "player", "computer", or "choose".

# currently how turns are chosen:
loop do
      display_board(board)

      display_score(score)

      player_turn!(board)
      break if someone_won?(board) || board_full?(board)

      computer_turn!(board)
      break if someone_won?(board) || board_full?(board)
    end

# need to prompt the user to decide who goes first outside of the inner loop
# so it's not asking who goes first after every turn cycle
# whatever the answer this needs to continue throughout a complete match

prompt("Who is going first? Player or Computer? (p or c)")

$goes_first = 'choose'

def who_goes_first(answer)
  case answer.downcase
  when 'p'
    $goes_first = 'player'
  when 'c'
    $goes_first = 'computer'
  else puts "Please choose either p or c"
  end
end

def turn_cycle(brd, first_mover)
  $goes_first == 'player' ? player_turn!(board) : computer_turn!(board)
  break if someone_won?(board) || board_full?(board)
end