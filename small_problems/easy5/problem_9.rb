# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# input: string
# output: string with all consecutive duplicates collapsed into a single character
  # -we need to be able to compare each element/character of the string
  # -if there are consecutive characters of the same type
  # -they need to be condensed into a single character
  # -return the string
  

def crunch(string)
  new_string = ""
  current_letter = ""
  string.chars.each do |letter|
    if current_letter == letter
      current_letter = letter
    else new_string << letter
    end
    current_letter = letter
  end
  new_string
end





# Test Cases
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''