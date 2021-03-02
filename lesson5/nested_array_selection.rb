# Given the following data structure use a combination of methods, including 
# either the select or reject method, to return a new array identical in structure
# to the original but containing only the integers that are multiples of 3.

# reject:
# Returns a new array containing the items in self for which the given block is not
# true. The ordering of non-rejected elements is maintained.
# select:
# Returns a new array containing all elements of ary for which the given block returns
# a true value.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |sub_array|
  sub_array.select { |int| int % 3 == 0 }
end
p new_arr