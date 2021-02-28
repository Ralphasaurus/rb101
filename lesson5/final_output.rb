a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b

# Given this code, what would be the final values of a and b? Try to work
# this out without running the code.

# line 1 is assigning the value of 2 to variable a
# line 2 is assigning an array to variable b
# line 3 is assigning an array containing the previous variables as elements to variable arr
# line 5 is reassiging the index[0] of arr to the value of a incremented by 2
#   - a is unchanged
# line 6 is reassigning index[0] of variable b to the value of 5
#        minus the value of a which is 2
#   - b is now = to [3, 8]