VALID_CHOICES = %w(r p s l k)

WINNING_MOVES = { r: ["s", "l"], p: ["r", "k"],
                  s: ["p", "l"], l: ["k", "p"],
                  k: ["r", "s"] }
scores = { player: 0, computer: 0 }

def prompt(message)
  puts "=> #{message}"
end

def validate_player_choice(choice)
  if VALID_CHOICES.include?(choice)
    true
  else
    prompt("That's not a valid choice. Try again.")
    false
  end
end

def winner?(players_choice, computer_choice, scores)
  if WINNING_MOVES[players_choice.to_sym].include?(computer_choice)
    display_who_won(1, scores)
  elsif WINNING_MOVES[computer_choice.to_sym].include?(players_choice)
    display_who_won(2, scores)
  else display_who_won(3, scores)
  end
end

def display_who_won(result, scores)
  case result
  when 1
    prompt("You won this round!")
    score_board(true, scores)
  when 2
    prompt("Computer won this round!")
    score_board(false, scores)
  when 3
    prompt("It's a tie!")
  end
end

def score_board(points, scores)
  points ? scores[:player] += 1 : scores[:computer] += 1
end

def display_score(scores)
  prompt("YOUR SCORE: #{scores[:player]}")
  prompt("COMPUTER SCORE: #{scores[:computer]}")
end

def reset_points(scores)
  scores[:player] = 0
  scores[:computer] = 0
end

def match_over?(scores)
  (scores[:player]) == 5 || (scores[:computer]) == 5
end

def evaluate_final_winner(scores)
  scores[:player] == 5
end

def display_final_winner(final_result)
  if final_result == true
    prompt("******Congratulations, you are the grand champion!******")
  else
    prompt("******The computer is the grand champion!******")
  end
end

prompt("Welcome to LIZARD SPOCK!")
prompt("-------------------------")
prompt("Here are the rules of the game:")
prompt("SCISSORS > PAPER > ROCK > LIZARD > SPOCK > SCISSORS")
prompt("> LIZARD > PAPER > SPOCK > ROCK > SCISSORS")
prompt("")
prompt("First to 5 wins the game.")
prompt("Good luck!")

choice = ''

loop do
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp.downcase
      break if validate_player_choice(choice)
    end

    computer_choice = VALID_CHOICES.sample()
    system("clear")
    prompt("You chose: #{choice}. Computer chose: #{computer_choice}")

    winner?(choice, computer_choice, scores)
    display_score(scores)
    break if match_over?(scores)
  end

  display_final_winner(evaluate_final_winner(scores))

  prompt("Do you want to play again? (Y to continue, any other key to quit)")
  continue = gets.chomp
  reset_points(scores)
  break unless continue.downcase.start_with?("y")
end

prompt("Thanks for playing!")
