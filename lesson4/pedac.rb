# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# input: string
# output: palidrome substrings within an array
# explicit rules: write method returning substrings that are palidromes. (case sensitive)
# implicit rules: method must return even the characters within a word if they are palidromeous.
#                 empty string objects return an empty array. 
#                 all returned palidromes will be inside of an array.
#                 if there are no palidromes within the string then return an empty array.
# 
# my questions would include: Are we returning the same object, modified, or a new one?
#                             will the input always be a string?