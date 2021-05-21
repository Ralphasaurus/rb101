[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# What will the return value be in this example? Use what you've learned so far
# to break it down on your own before checking the solution below.

# outer map uses the return value of the block to transform the elements of
# the multi-dimensional array. Inside the block we have one parameter |arr|
# that upon each iteration has the value of the nested arrays. On each iteration
# we are calling the map method on these arrays. The inner map method has one block
# parameter |num|. So we are taking the integer 1 and inside the block multiplying 1
# by 2. The return value is 2. Map uses this return value to transform the element to
# 2. Second iteration we take 2 * 2 =  4 as the return value of the block and transform
# the second element to 4. So the return value of the inner map method upon first
# iteration is a new array [2,4]. The outer map method uses this return value to
# transform the first index element to a new array [2, 4]. We do it all over again
# with the second indexed element. 

# => [[2, 4], [6, 8]] is the return value.