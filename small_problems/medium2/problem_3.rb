# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def letter_percentages(string)
  hash = {}
  array = string.chars
  multiplier = 100 / string.size.to_f
  hash[:lowercase] = ((array.count { |char| char =~ /[a-z]/ }) * multiplier).round(2)
  hash[:uppercase] = ((array.count { |char| char =~ /[A-Z]/ }) * multiplier).round(2)
  hash[:neither] = ((array.count { |char| char =~ /[^a-zA-Z]/ }) * multiplier).round(2)
  hash
end

# Test Cases:
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
puts "Further Exploration:"
p letter_percentages('abcdefGHI') == {lowercase: 66.67, uppercase: 33.33, neither: 0.0}


