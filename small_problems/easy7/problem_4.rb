# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and 
# every lowercase letter by its uppercase version. All other characters should 
# be unchanged.

# You may not use String#swapcase; write your own version of this method.
require 'pry'
require 'pry-byebug'

def swapcase(string)
  string.chars.map do |char|
    if /[A-Z]/.match(char)
      char.downcase!
    elsif /[a-z]/.match(char)
      char.upcase!
    else char
    end
  end.join
end

# Test Cases

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'