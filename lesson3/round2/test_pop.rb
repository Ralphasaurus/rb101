def pop_method(input_string)
  array = input_string.split
  array.pop
  p array
end

string =  "hey this is my string"

pop_method(string)

puts string

# #pop method does not mutate the string because the split method being called
# on input_string creates a new array which is assigned to the array variable. It
# is actually this new local variable that is mutated not the original string...