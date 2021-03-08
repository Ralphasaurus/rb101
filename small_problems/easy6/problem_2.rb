require 'pry'
require 'pry-byebug'

def remove_vowels(array)
  array.map do |string|
    split_string = string.split(//)
    split_string.select! do |letter|
      !/[aeiouAEIOU]/.match?(letter)
    end
    split_string.join
  end
end

# Test Cases
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']