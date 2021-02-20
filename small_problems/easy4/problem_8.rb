DIGITS = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
           "6" => 6, "7" => 7, "8" => 8, "9" => 9 }
          # "a" => 10, "b" => 11,
          # "c" => 12, "d" => 13, "e" => 14, "f" => 15 }

def string_to_signed_integer(string)
  keys_array = string.chars
  neg = 1
  if keys_array.include?("-")
    neg = -1
    keys_array.delete("-")
  end
  
  if keys_array.include?("+")
    keys_array.delete("+")
  end
  
  accumulator = 0
  keys_array.each { |character| accumulator = 10 * accumulator + DIGITS[character] }
  accumulator * neg
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100