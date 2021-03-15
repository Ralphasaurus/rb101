# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in order
# from shortest to longest substring.

# // input: a string
# // output: an array containing substrings of the string from shortest to longest

# // use chars to create an array of the string characters
# // use join to put them back together and append them into a new array
# // use pop to remove a character
# // loop back to step 2 until the chars array is empty

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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']