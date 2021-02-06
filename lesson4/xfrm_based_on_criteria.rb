my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(array, num)
  returned_array = []
  counter = 0
  
  loop do
    break if counter >= array.size
    current_element = array[counter] * num
    returned_array << current_element
    counter += 1
  end
  p returned_array
end







multiply(my_numbers, 10) # => [3, 12, 9, 21, 6, 18]