number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish'] 
    #creating new array using the keys method

counter = 0

loop do
  break if counter == number_of_pets.size  #setting a break if the counter equals the size of hash
  current_pet = pets[counter] # new variable pointing at the pets array selecting element 
                              # based on counter iteration
  current_pet_number = number_of_pets[current_pet] # new variable pointing at a hash key based 
                                                   # on the current_pet variable
  puts "I have #{current_pet_number} #{current_pet}!" # calling the puts method to print a string
                                  # and using string interpolation to print some variables
  counter += 1
end