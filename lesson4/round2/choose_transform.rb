my_numbers = [1, 4, 3, 7, 2, 6]


def multiply(array, digit)
  array.map { |element| element * digit }
end

p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers