VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_MOVES = { rock: ["scissors", "lizard"], paper: ["rock", "spock"],
                  scissors: ["paper", "lizard"], lizard: ["spock", "paper"],
                  spock: ["rock", "scissors"] }
@player_score = 0
@computer_score = 0

def prompt(message)
  puts "=> #{message}"
end

def display_score
  prompt("YOUR SCORE: #{@player_score}")
  prompt("COMPUTER SCORE: #{@computer_score}")
end

def score_board(points)
  points ? @player_score += 1 : @computer_score += 1
end

def display_results(players_choice, computer_choice)
  if WINNING_MOVES[players_choice.to_sym].include?(computer_choice)
    prompt("You won!")
    score_board(true)
  elsif WINNING_MOVES[computer_choice.to_sym].include?(players_choice)
    prompt("Computer won!")
    score_board(false)
  else prompt("It's a tie!")
  end
end

def win?
  if @player_score == 5
    prompt("******Congratulations, you are the grand champion!******")
  else
    prompt("******The computer is the grand champion!******")
  end
  prompt(display_score())
end

prompt("Welcome to LIZARD SPROCK!")
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
      choice = gets.chomp
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice. Try again.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    prompt("You chose: #{choice}. Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)
    display_score()
    if @player_score == 5 || @computer_score == 5
      break win?()
    end
  end
  prompt("Do you want to play again?")
  continue = gets.chomp
  break unless continue.downcase.start_with?("y")
end

prompt("Thanks for playing!")
