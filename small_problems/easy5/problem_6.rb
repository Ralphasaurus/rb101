# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  hash = {}
  string_array = string.split
  
  string_array.each do |element|
    if hash.has_key?(element.size)
      hash[element.size] += 1
    else hash[element.size] = 1
    end
  end
  hash
end





p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}