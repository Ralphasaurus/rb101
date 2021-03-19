# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length, you
# should return exactly one character. If the argument has an even length, you
# should return exactly two characters.

require 'pry'
require 'pry-byebug'

def center_of(string)
  arr = string.chars
  index = (arr.size/2)
  if arr.size.even?
    arr[index - 1] + arr[index]
  else arr[index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'