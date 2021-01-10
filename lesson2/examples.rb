num = 5

if (num > 10)
  puts "big number"
else puts "little number"

end

puts "---------------"

puts "five" if num == 5

puts "---------------"

if num
  puts "its a valid number"
else 
  puts "error"
end 

puts "----------------"

name = find_name

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end