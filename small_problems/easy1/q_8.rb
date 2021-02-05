def average(array)
  total = 0
  array.each do
    |i| total = i + total
  end
  total / array.size
end


# These tests should print true:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# 1. initialize a local variable called 'total' with a value of 0
# 2. iterate over the array
# 3. add each element to the total variable
# 4. divide the total variable by the size of the array
# 5. return this integer