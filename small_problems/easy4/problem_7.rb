# 1) create a hash that pairs up each character with it's respected number
#   - example: {"1" : 1, "2", : 2}
# 2) create a new array consisting of each of the characters of the string
# 3) initialize a new variable for the output
# 4) iterate through each of these characters
#   -inside the block of this iteration multiply the output variable by 10
#   -add it to the hash[key] number
# 5) output the output variable

HEX = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
           "6" => 6, "7" => 7, "8" => 8, "9" => 9, "a" => 10, "b" => 11,
           "c" => 12, "d" => 13, "e" => 14, "f" => 15 }

def hexadecimal_to_integer(string)
  keys_array = string.downcase.chars
  accumulator = 0
  keys_array.each { |character| accumulator = 16 * accumulator + HEX[character] }
  p accumulator
end

#my test cases
p hexadecimal_to_integer('4D9f') == 19871
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570