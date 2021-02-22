*Problem*
Write a method that determines and returns the ASCII string value of a 
string that is passed in as an argument. The ASCII string value is the 
sum of the ASCII values of every character in the string. (You may use
String#ord to determine the ASCII value of a character.)

*Test Cases*
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

*Data Structures and Algorithms*
1. split the string
2. for each character use .ord to determine the ascii value
3. store this value in an array 
4. use array sum to return the result


*Code with Intent*

