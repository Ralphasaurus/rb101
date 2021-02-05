puts "*********first**********"
fruits = ['apple', 'banana', 'pear']
updated_fruits = []
counter = 0

loop do
  break if counter >= fruits.size # placing the break in front to catch if the array is zero
  updated_fruits << fruits[counter] + "s"
  counter += 1
end

p updated_fruits
p fruits 

#*************************
# In the above example we are not mutating the original array fruits
#*************************


#*************************
# In the below example we are actually mutating the original array
#*************************

puts "*********second***********"

fruits = ['apple', 'banana', 'pear']
updated_fruits = []
counter = 0

loop do
  break if counter >= fruits.size # placing the break in front to catch if the array is zero
  fruits[counter] = fruits[counter] + "s"
  counter += 1
end

p updated_fruits
p fruits