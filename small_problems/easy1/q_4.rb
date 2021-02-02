vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'suv'
]

def count_occurrences(input)
  vehicle_hash = {}
  count = input.size
  loop do
    current_item = input.pop
    if vehicle_hash.include?(current_item)
      vehicle_hash[current_item] += 1
    else
      vehicle_hash[current_item] = 1
    end
      count -= 1
      break if count <= 0
  end
  puts vehicle_hash
end

 # Going to need a parameter for the input array
# 1. iterate over the array
# 2. remove an element
# 3. add it to a hash as a key
# 4. set the value of said key to 1
# 5. move to next element
# 6. if the element is the same as an existing key increment that value by 1 
# 7. else repeat steps 3-4
# 8. repeat steps 5-7 **loop back**
# 9. when all elements have been evaluated return the new hash.
count_occurrences(vehicles)