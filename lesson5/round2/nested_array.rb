arr = [[1,2], [3], [4,5,6]]

puts "The nested array is #{arr}"
puts "The center second nested array is #{arr[1]}"
puts "To update the third nested array we have to use an element reference"
puts "and chain onto it an element update like so arr[2][0] = string"
arr[2][0] = "This is the new element!"
p arr
puts "Likewise we can append a new element to the third array by"
puts "doing this: arr[2] << 'Here's another!' "
arr[2] << "Here's another!"
p arr