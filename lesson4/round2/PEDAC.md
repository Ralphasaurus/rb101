# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# UNDERSTANDING/RULES:
  - input: a string
  - output: an array of strings
  The palidromes can be found within a word. So we are going to need to iterate
  and check for patterns character by character. 
  From the test cases it seems that any repeating pattern of 2 or more characters.
  Case sensitive.
  

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []