require 'pry'
require 'pry-byebug'

# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

# the array will always contain 9 elements
# the elements will be spaces or stars
# ---always an even number of spaces
# ---stars will always be odd
# first and last iteration will have (n / 2) spaces
# stars will go from 1, to n, back to 1


# The below works to print the first line...
def row(num_space, num_star)
  space = ' ' * num_space
  star = '*' * num_star
  arr = [space, star, space]
  puts arr.join
end

def diamond(n)
  num_space = n / 2
  num_star = 1
  
  loop do
    row(num_space, num_star)
    break if num_star == n
    num_space -= 1
    num_star += 2
  end
  loop do
    num_space += 1
    num_star -= 2
    row(num_space, num_star)
    break if num_star == 1
  end
end

diamond(3)
diamond(9)

