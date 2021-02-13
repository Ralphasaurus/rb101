# # Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th
# number appears amongst the first 5 numbers.

numbers_array = []

def prompt(num)
  puts ">> Please enter number #{num}:"
end

5.times {|n| prompt(n + 1)
  number = gets.chomp.to_i
  numbers_array << number
}

puts ">> Enter the last number:"
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}"
else
  puts "The number #{last_number} does not appear in #{numbers_array}"
end
