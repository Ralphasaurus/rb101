# Write a program that prompts the user for two positive integers, and then prints the results
# of the following operations on those two numbers: addition,subtraction, product, quotient, 
# remainder, and power. Do not worry about validating the input.

array =  []


puts ">> Please enter the first positive integer:"
first = gets.chomp.to_i
puts ">> Please enter the second positive integer:"
second = gets.chomp.to_i

array << first
array << second

add = array.reduce(:+)
subtract = array.reduce(:-)
multiply = array.reduce(:*)
divide = array.reduce(:/)
mod = array.reduce(:%)
expo = array.reduce(:**)

puts "==> #{first} + #{second} = #{add}"
puts "==> #{first} - #{second} = #{subtract}"
puts "==> #{first} * #{second} = #{multiply}"
puts "==> #{first} / #{second} = #{divide}"
puts "==> #{first} % #{second} = #{mod}"
puts "==> #{first} ** #{second} = #{expo}"