def ascii_value(string)
  string_array = string.chars
  array_of_values = []
  string_array.each do |character| 
    value = character.ord
    array_of_values << value
  end
  array_of_values.sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


# 1. split the string
# 2. for each character use .ord to determine the ascii value
# 3. store this value in an array 
# 4. use array sum to return the result