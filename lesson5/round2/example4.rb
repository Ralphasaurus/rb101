my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# p my_arr

# Can you take this code apart, just like before? What will be output
# and what will be the value of my_arr?

# We start by calling the each method on a multi-dimensional array with a block that
# takes one block parameter |arr|. Inside the block we are calling the each method on
# arr with a block that takes one parameter |num|. Inside this block we have a
# conditional statement that says if the block parameter |num| is greater than 5
# call the puts method on num. First iteration it will print 18 to the screen then
# return nil. Each doesn't care about the return value of the block. Second iteration
# will print 7 to the screen and return nil. The inner each returns the array [18, 7].
# But the outer each doent care about the return value either. It moves onto the second
# iteration and back into the inner each method call on [3, 12]. The conditional
# skips 3 because its not greater than 5. Then prints 12 to the screen, puts returns
# nil. Each doesn't care about the return value. The outter each doesn't care about
# the return value either and returns the original multi-dimensional array.

# => 18
# => 7
# => 12
# => my_arr = [[18, 7], [3, 12]]

