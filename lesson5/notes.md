** Spaceship Operator**
<=>
-is used to compare objects
-is used by the sort method to sort collections
-returns -1, 0, 1, or nil
-ruby docs can be helpful in explaining how it works
-<=> uses the ASCII table to determine the precedence of integers, string characters, etc
-digits, capital letters, and most punctuation precede lowercase letters
    -this means the numerical representation on the ASCII chart is of lower value
    -for example "A" is given the value of 65 while "a" has the value of 97
    -so the output of comparing (<=>) these two characters:
                  "A" <=> "a" = -1
