# Using ternary operator and an easy regular expression to check
# if the bang character is in the string, like so:
# "bob!" =~ /!/ # => True

def hello_bob()
  puts "What is your name?"
  name = gets.chomp
  greeting = "Hi #{name}."
  yell = "HELLO #{name.chop}. WHY ARE WE SCREAMING?"
  name =~ /!/ ? (puts yell) : (puts greeting)
end

p hello_bob