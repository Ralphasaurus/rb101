# In the modern era under the Gregorian Calendar, leap years occur in every year that
# is evenly divisible by 4, unless the year is also divisible by 100. If the year is 
# evenly divisible by 100, then it is not a leap year unless the year is evenly divisible
# by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any
# year greater than 0 as input, and returns true if the year is a leap year, or false if 
# it is not a leap year.

# Problem::
# # 1) is it evenly divisible by 4?
#     -use % to see if there's a remainder
# 2) is it evenly divisible by 100?
#     -use % to see if there's a remainder
# 3) if divisible by 100 must also be divisible by 400 to be leap year.
#     -use % to see if there's a remainder
# 4) return true if leap year, false if not.

def leap_year?(year)
  return true if year % 400 == 0
  case year
  when (0..1752)
    year % 4 == 0 ? true : false
  else
    (year % 4 == 0) && (year % 100 != 0) ? true : false
  end
end

# Test Cases before and after 1752
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true


# # Examples and Test Cases
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true