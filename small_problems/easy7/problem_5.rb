# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# / create an array of characters
# / iterate through the characters
# / if the index of the character is even then make uppercase
# / if the index of the character is odd then make lowercase
# / return new array

def staggered_case(string)
  result_array = string.chars
  result_array.each_with_index do |item, i|
    i.odd? ? item.downcase! : item.upcase!
  end.join
end



# Test Cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'