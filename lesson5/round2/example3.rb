answer = [[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

p answer
# We start with a multi-dimensional array and call the map method on it with a block.
# Initialize a block parameter and set it to local variable arr. Inside the block we
# are calling the first method upon the variable arr which returns arr[0]. Then we use
# puts to print a string representaion of the integer 1. On line two of the block we are
# calling the first method again on arr which returns arr[0] again. This is the return
# value of the block first iteration one. Map uses this return value and adds it to
# a new array. On the second iteration 3 is returned to the map method and added to the
# new array. The return value of map called upon the multi-dimensional array is:
# [1, 3]