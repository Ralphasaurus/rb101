# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or
# product of all numbers between 1 and the entered integer.

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

array = []
num = number


# # first attempt 
# def product_method(array)
#   array.reverse
#   running_total = 1
#   until array.size == 0
#   running_total = running_total * array[0]
#   array.delete_at(0)
#   end
#   running_total
# end

# alternate simple product method using the reduce method
def product_method(array)
  array.reduce(:*)
end


def sum_method(array)
  array.sum
end

while num > 0
  array << num
  num -= 1
end

case choice
when "s"
  answer = sum_method(array)
  operator = "sum"
when "p"
  answer = product_method(array)
  operator = "product"
else puts "That's not a valid input"
end

puts "The #{operator} of the numbers between 1 and #{number} is #{answer}."

# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.


# Algorithm for product of array

