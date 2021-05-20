a = 2
b = [5, 8]
arr = [a, b]

puts "before"
p a
p b
p arr

arr[0] += 2
arr[1][0] -= a

puts "after"
p a
p b
p arr