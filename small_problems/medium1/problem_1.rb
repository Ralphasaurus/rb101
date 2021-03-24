# Write a method that rotates an array by moving the first element to the end of the
# array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# further exploration: rotate a string. rotate an integer. you may call the array method.
# Example:

def rotate_array(arr)
  arr.select {|el| el != arr[0]} << arr[0]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_integer(12345) == 23451
p rotate_string("taco") == "acot"
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true