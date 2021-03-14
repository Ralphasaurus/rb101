# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every pair
# of numbers that can be formed between the elements of the two Arrays. The results
# should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# // input: two arrays containing a list of numbers that can be formed
# // output: new array that contains the product of every pair, sorted in increasing value

def multiply_all_pairs(array1, array2)
  p array1.zip(array2) { |pair| p pair } 
end

# Test Case

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]