def reverse_words(input)
  input_to_array = input.split
  input_to_array.each do
    |string| string.length >= 5 ? string.reverse! : string
  end
  input_to_array.join(" ")
end

# 1. use split method on string to create an array of strings and assign it to a variable
# 2. iterate over the array
# 3. if the array contains words with 5 characters or more reverse them
# 4. join the strings back together
# 5. return the string 


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS