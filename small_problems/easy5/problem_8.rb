# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# input : array of integers between 0 and 19
# output : array of the input integers sorted based on english words for each number

# will need a reference array with nested hashes containing the words as keys 
# and the integers as values

WORDS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
  "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
  "seventeen", "eighteen", "nineteen"]

def alphabetic_number_sort(range)
  hash = {}
  words_sorted = WORDS.sort
  
  range.each_with_index do |int, index|
    hash[int] = WORDS[index]
  end
  
  words_sorted.map do |word|
    hash.key(word)
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]