*Problem*
do not use any built in methods to accomplish this, you are tring to replicate
the functionality of those built in methods...

input = a string of numbers
output = and integer of those same numbers

*Examples and Test Cases*
string_to_integer('4321') == 4321
string_to_integer('570') == 570

*Data Structures and Algorithms*
1) create a hash that pairs up each character with it's respected number
  - example: {"1" : 1, "2", : 2}
2) compare the input string with the key's of the of the hash
3) if a match is found add the value of that hash to a new array
4) return the new array



*Code with Intent*