# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
# print "FizzBuzz".

# input: 2 numbers
# output: an array of strings
# // initialize an empty array
# // fill it with all the numbers between the two numbers (including the numbers)
# // iterate through this array
# // if the number is divisible by 3 replace it with "Fizz"
# // if the number is divisible by 5 replace it with "Buzz"
# // if the number is divisible by 3 and 5 replace it with "FizzBuzz"
# // return the array
require 'pry'
require 'pry-byebug'

def fizzbuzz(int1,int2)
  array = (int1..int2).to_a
  array.map do |num|
    if num % 3 == 0 && num % 5 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else num
    end
  end
end

p fizzbuzz(1, 15) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
