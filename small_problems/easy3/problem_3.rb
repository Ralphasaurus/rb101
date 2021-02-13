puts ">> Please enter a word or multiple words:"
input = gets.chomp

count = 0

input.split(%r{\s*}).each {|letter| count += 1}

puts "There are #{count} characters in '#{input}'"