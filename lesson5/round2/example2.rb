multi = [[1, 2], [3, 4]]
answer = multi.map do |arr|
  puts arr.first
end
p answer
p multi
# 1
# 3
# => [nil, nil]
# => [[1, 2], [3, 4]]

# We start with a multi-demensional array. Call the map method upon it with a block.
# Initialize a local variable arr as a block parameter. First iteration: arr is equal
# to the first element inside the array which is another array [1, 2]. We are calling
# the first method upon arr and it returns arr[0] puts prints a string representaion of
# arr[0] which is "1". Next iteration it does the same thing with the next array
# printing arr[0] which is "3". Upon each iteration of the block map uses the return
# value of the block to place elements in a new array and return this new array. Since
# the last line of the block happens to be puts and puts returns nil, we end up with
# a new array filled with two elements that each have the value of nil.