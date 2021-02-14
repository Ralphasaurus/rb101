# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward. For this exercise,
# case matters as does punctuation and spaces.

def palindrome?(arg)
  arg.reverse == arg
end

def real_palindrome?(arg)
  alpha_num = ('a'..'z').to_a.concat(('0'..'9').to_a)
  new_arr = arg.downcase.chars.select {|character| alpha_num.include?(character)}
  palindrome?(new_arr)
end

# Problem 9 Test Cases:
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# Examples/Test Cases:
# strings
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true
# # arrays
# p palindrome?([1,2,3,2,1]) == true
# p palindrome?(["a","b","b","a"]) == true
# p palindrome?(["abc","cc","def"]) == false
# p palindrome?([[1,2],[3,4],[1,2]]) == true