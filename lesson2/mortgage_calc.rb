def prompt(msg)
  puts "=> #{msg}"
end

def calculate(amount, duration, apr)
  time = duration.to_i * 12
  percentage = (apr.to_f / 100) / 12
  puts amount.to_f * (percentage.to_f / (1 - (1 + percentage.to_f)**(-time)))
end

prompt("Welcome to the Loan Calculator!")

information = <<-INFO

  I'll need to collect some information to get started:
    1) The total loan amount
    2) The duration of the loan (in years)
    3) The APR
INFO

prompt(information)

loan_amount = ''
loan_duration = ''
apr = ''
loop do
  loop do
    prompt("what is the loan amount?")
    loan_amount = gets.chomp
    if loan_amount != 0
      break
    else prompt("Please enter a valid number...")
    end
  end

  loop do
    prompt("What is the duration of the loan? (in years)")
    loan_duration = gets.chomp
    if loan_duration.to_i.integer?
      break
    else prompt("Please enter your loan amount in years...")
    end
  end

  loop do
    prompt("What is the APR? (example: 5 for 5%, 4.5 for 4.5%)")
    apr = gets.chomp
    if apr != 0
      break
    else
      prompt("Please enter a valid number...")
    end
  end

  prompt("Calculating...")
  prompt("Your total monthly payment for the loan would be:")
  calculate(loan_amount, loan_duration, apr)

  prompt("Would you like to perform another calculation? (y or n)")
  continue = gets.chomp
  break unless continue.downcase == "y"
end

prompt("Thank you for using the calculator!")
