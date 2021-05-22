array = [[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

p array

# We start by calling the map method on the outter array. Using arr as a block
# parameter each of the inner arrays will be used. Then we are calling the map method
# again on each iteration. Within the block for the map method we have a conditional
# statement saying if each element of arr is an integer increment the integer by 1.
# else call the map method again to reach the next layer and do the increment there.
# Each of the map methods returns a new array based on the return value of the block.
# So we end up returning a new nested array where all the integers are incremented by
# one.