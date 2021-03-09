# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)
#   You may assume that the argument is always greater than or equal to 2.

# input: an integer greater than or equal to 2
# output: the index of the first Fibonacci number that has the number of digits
#         as the input. (an integer)

# -fibonacci is a sequence of integers
# -each integer is a sum of the two previous integers in the sequence
# -we need to find the index of one of the integers in the sequence
# -we are given the number of digits

# the sequence could be an array of integers

# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

def find_fibonacci_index_by_length(integer)
  sequence = [1,1]
  loop do
    sequence << (sequence[-1] + sequence[-2])
    break if sequence.last.to_s.size == integer
  end
  sequence.length
end

# Test Cases
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847