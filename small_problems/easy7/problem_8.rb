# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.


# // input: two arrays containing list of numbers
# // output: new array containing the products of each pair of numbers from arguments with
# //         same index.

# // initialize an empty array to return at the end
# // use each with index to loop through one of the arrays
# // multiply and append each product into the empty array
# // return that array

# def multiply_list(array1, array2)
#   result_array = []
#   array1.each_with_index do |num, i|
#     result_array << num * array2[i]
#   end
#   result_array
# end

# // one liner using zip, not exactly a one liner...

def multiply_list(array1, array2)
  result = []
  array1.zip(array2) { |num1, num2| result << (num1 * num2) }
  result
end


# Test Case
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

