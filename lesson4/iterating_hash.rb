number_of_pets = {
  dogs: 3,
  cats: 2,
  fish: 4
}

pets = number_of_pets.keys

counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_number = number_of_pets[current_pet]
  puts "I have #{current_number} #{current_pet}"
  counter += 1
end