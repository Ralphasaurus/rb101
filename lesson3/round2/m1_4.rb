def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The first method is adding the new element to the buffer with the append method
# which mutates the caller and using the shift
# method to remove the first element from that array if the size of the buffer is
# greater than the max_buffer_size. It returns the mutated buffer array.

# The second method creates a new local variable called buffer and assigns it the value
# of a new array created using the + method which combines two arrays into a new array.
# It then uses a conditional statement to say that if the buffer size is greater
# than the max_buffer_size call the shift method on the local variable buffer to
# remove the first element from the array. It returns the value of this newly
# created local variable buffer. It really doesn't accomplish the goal of a
# rolling buffer method... because the original input_array is not mutated. It doesn't
# add anything to the input. And it doesn't remove anything either. haha.





