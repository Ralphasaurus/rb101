[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

# What is happening here?
# We start with an array that contains two nested arrays. We then call the #each
# method up this array. Using a block we initialize a block parameter and
# set it to local variable 'arr'. Within the block we are using the puts method to
# print to the screen arr.first. The first method takes the first element from arr,
# on this iteration arr = [1, 2]. So the first element is 1. Upon the next iteration
# the local variable arr = [3, 4]. So we print 3. The each method then returns the 
# original array.