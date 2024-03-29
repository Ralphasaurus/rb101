# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it
# does backwards. The return value should be arranged in the same sequence as the
# substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention
# to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In
# addition, assume that single characters are not palindromes.

def leading_substrings(string)
  array = string.chars
  result = []
  loop do
    break if array.empty?
    result.unshift(array.join)
    array.pop
  end
  result
end

def substrings(string, result = [])
  array = string.chars
  if array.size > 0
    result << leading_substrings(string)
    array.delete_at(0)
    substrings(array.join, result)
  else result.flatten
  end
end

def palindromes(string)
  result = []
  local_arr =  substrings(string)
  local_arr.each do |element|
    if element == element.reverse
      result << element unless element.size <= 1
    end
  end
    p result
end


# Test Cases
p palindromes('AbA') == ['AbA']
p palindromes('Aba') == []
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]