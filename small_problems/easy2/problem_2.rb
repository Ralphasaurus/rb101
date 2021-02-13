SQMETERS_TO_SQFEET = 10.7639

puts "What is the length of the room? (in feet)"
length_input = gets.chomp.to_i
puts "What is the width of the room? (in feet)"
width_input = gets.chomp.to_i

def size_of_room(length, width)
  sqft = length * width
  sqin = sqft * 12
  sqcent = (sqft / 10.7639) * 100**2
  puts "The total area of the room is:" 
  puts "#{sqft}ft."
  puts "#{sqin}in."
  puts "#{sqcent}cm."
end

size_of_room(length_input, width_input)

# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, and square centimeters.