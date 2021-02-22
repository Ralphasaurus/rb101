# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.


def integer_to_string(int, options={})
  if options == "-"
    "-" + (int * -1).digits.reverse.join
  elsif options == "+"
    "+" + int.digits.reverse.join
  else int.digits.reverse.join
  end
end

def signed_integer_to_string(int)
  if int < 0
    integer_to_string(int, "-")
  elsif int > 0
    integer_to_string(int, "+")
  else integer_to_string(int)
  end
end

# Test Cases
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'