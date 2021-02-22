*Problem*
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns
the time of day in 24 hour format (hh:mm). Your method should work with any
integer input.

You may not use ruby's Date and Time classes

Disregard Daylight Savings and Standard Time and other complications.



Input: a negative or positive integer
Output: a string in "00:00"/hh:mm format

Rules:
- if the input integer is positive the time is after midnight
- if the input integer is negative the time is before midnight
- minutes are 00 - 59 and displayed on the right of a semicolon
- hours are 00 - 23 and displayed on the left of a semicolon
- output is a string
- input is an integer
- need to know the number of minutes in a 12 hour period... 720min
- if the input integer goes beyond this 720 min it will move into the next 12 hours..

*Test Cases*
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

*Data Structures and Algorithms*
1. define method that takes one input, an integer
2. figure out input integer is less than 60
3. if thats true then the hour block will be either 23 (if a neg) or 00 (if a pos)
4. if input integer is more than 60
5. divide (%) input by 60 to figure out how many hours you have
7. if you have more than 12 hours
8. divide (%) your hours by 12
9. the remainder will be your hours
10. if pos it will be after midnight (00..23)
11. if neg it will be before midnight (23..00)
12. store all these variables after calculations
13. use string interpolation to display them in a hh:mm format "#{hour}:#{min}"



*Code with Intent*

