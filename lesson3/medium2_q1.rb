def method(random)
  inside = random + 100
  puts "this is the id inside the method changed: #{inside.object_id}"
  puts "this is the id inside the method: #{random.object_id}"
end

random = 567
puts "this is the id outside the method: #{random.object_id}"
method(random)