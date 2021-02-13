# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Examples:
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

puts "What's your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE WE YELLING!!??"
else
  puts "Hello #{name.capitalize}"
end
