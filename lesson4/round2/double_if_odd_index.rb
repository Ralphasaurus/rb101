my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_numbers(array)
  new_arr = []
  counter = 0
  loop do
    break if counter == array.size
    new_arr << (array[counter] * 2) if counter.odd?
    new_arr << array[counter] if counter.even?
    counter += 1
  end
  new_arr
end

p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]