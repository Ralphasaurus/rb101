# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# (&:method_name) is the same thing as writing {|item| item.method_name}
# you can use this syntax with any method that has no arguments.

# Alternate Solution 1
def word_cap(string)
  array = string.split
  array.each do |word|
    word.downcase!
    word[0] = word[0].upcase
  end
  array.join(' ')
end

# Alternate Solution 2
def word_cap(string)
  array = string.downcase.split
  array.each do |word|
    word[0] = word[0].upcase
  end
  array.join(' ')
end

# Ruby conveniently provides the String#capitalize method to capitalize strings.
# Without that method, how would you solve this problem? Try to come up with at
# least two solutions.


# Test Cases
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'