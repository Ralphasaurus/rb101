# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For instance, the length of
# "it's" is 3, not 4.

def word_sizes(string)
  hash = {}
  string_array = string.split
  non_alphas = [",", "!", "?", "'", "."]
  
  string_array.map! do |element|
    element.chars
  end
  
  string_array.each do |sub_array|
    sub_array.select! do |char|
      if non_alphas.include?(char)
        false
      else true
      end
    end
  end
  
  string_array.each do |element|
    if hash.has_key?(element.size)
      hash[element.size] += 1
    else hash[element.size] = 1
    end
  end
  hash
end

# Examples and test cases...
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}