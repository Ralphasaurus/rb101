# Write a method that takes a string, and returns a new string in which
# every character is doubled.

def repeater(string)
  string.chars.map { |l| l*2 }.join
end

# Test Case:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''