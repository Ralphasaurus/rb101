*Problem*
As seen in the previous exercise, the time of day can be represented as
the number of minutes before or after midnight. If the number of minutes
is positive, the time is after midnight. If the number of minutes is negative,
the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and
return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

* input: a string in 24 hour format
* output: an integer between 0..1439

*Examples*
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == -686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

*Data Structures and Algorithms*
- use the chars method to break down the input into an array of characters
- store this array in a variable
- use index to store the characters you want in two new arrays by <<
- join the objects in these new arrays together and convert to_i
- before_midnight: 
  - use the hour variable and multiply it by 60 to get the total minutes
  - add the minutes
  - add this total to -1440
- after_midnight:
  same as before_midnight except subtract from 1440


*Code with Intent*

