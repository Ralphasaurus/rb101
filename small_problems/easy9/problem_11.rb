# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# need to create an hash of hashes with strings as keys and arrays as values

def grouped_ana(array)
  storage_hash = {}
  array.each do |word|
    check = word.chars.sort.join      # sort the word 
    if storage_hash.has_key?(check)   # if already have sorted word as key
      storage_hash[check] += [word]   # add it to value array
    else storage_hash[check] = [word] # otherwise create new pair
    end
  end
  storage_hash.each_pair { |_, value| puts "#{value}" } # print hash values (the arrays)
end

grouped_ana(words)
# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in
# a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)