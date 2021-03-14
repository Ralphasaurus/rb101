# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every pair
# of numbers that can be formed between the elements of the two Arrays. The results
# should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# // input: two arrays containing a list of numbers
# // output: new array that contains the product of every pair, sorted in increasing value

# // for each element of array1
# // multiply it by each element in array 2
# // store these values in an array
# // sort array

# def multiply_all_pairs(array1, array2)
#   result_array = []
#   array1.each do |num1|
#     array2.each { |num2| result_array << (num2 * num1) }
#   end
#   result_array.sort
# end

#Compact Solution!

def multiply_all_pairs(arr1,arr2)
  arr1.product(arr2).map {|arr| arr.reduce(:*)}.sort
end

# Test Case

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]