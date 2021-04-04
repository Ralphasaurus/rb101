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


def row(num_of_spaces, num_of_stars) # need to return the appropriate array
  stars = '*' * num_of_stars
  space = ' '
  array = []
  num_of_spaces.times { array << space }
  array.insert(num_of_spaces, stars)
end

def diamond(n)
  off_center = (n/2)
  container = []
  sub_container = []
  1.upto(off_center) do |i|
    container << row(off_center, i)
  end
  off_center.downto(1) do |i|
    container << row(off_center, i)
  end
  p container
  
end

diamond(3)