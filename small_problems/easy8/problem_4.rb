# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all substrings
# that start at position 1, and so on. Since multiple substrings will occur at each
# position, the substrings at a given position should be returned in order from shortest
# to longest.

# You may (and should) use the leading_substrings method you wrote in the previous
# exercise:




# previous exercise method::
def leading_substrings(string)
  array = string.chars
  result = []
  loop do
    break if array.empty?
    result.unshift(array.join)
    array.pop
  end
  result
end

def substrings(string, result = [])
  array = string.chars
  if array.size > 0
    result << leading_substrings(string)
    array.delete_at(0)
    substrings(array.join, result)
  else result.flatten
  end
end

# Test Case:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]