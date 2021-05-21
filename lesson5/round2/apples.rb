a = 'apple'
b = ['banana', 'blueberry']
arr = [a, b]

puts "a object_id is #{a.object_id}"
puts "b object_id is #{b.object_id}"

puts "arr[0] object_id is #{arr[0].object_id}"
puts "arr[1] object_id is #{arr[1].object_id}"
puts "arr[1][0] object_id is #{arr[1][0].object_id}"


arr[0] += 's'

puts "Reassignment with (arr[0] += 's') arr[0] object_id is #{arr[0].object_id}"
puts "and a object_id is #{a.object_id}"
p a
p arr[0]

arr[1][0] += 's'
puts "Reassignment with (arr[1][0] += 's') arr[1][0] object_id is #{arr[1][0].object_id}"
puts "and b object_id is #{b.object_id}"
p b
p arr[1][0]

# puts "Reassignment with (arr[1][0] += 's') b "

