# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes
# and seconds, e.g., 321°03'07".

# input: a floating integer
# output: a string that represents the angle in degrees, minutes, and seconds
#         - (°) to represent degrees, a single quote (') to represent minutes,
#           and a double quote (") to represent seconds

# - use modulus operator to break down the float
#   - int % 1 for determining degrees, remainder will be passed to minutes
#   - int % 60 for determining minutes, remainder will be the seconds
# - each of the above can be stored in variables to use for display
# - perhaps write a helper method to format the return value the way i want...
# - format(degree, minute, second)
# - degree.to_s.rjust(3,"0"), minute.to_s.rjust(2,"0"), second.to_s.rjust(2,"0")
# - see if the above works...
require 'pry'
require 'pry-byebug'

DEGREE = "\xC2\xB0"

def format_to_degrees(degrees, minutes, seconds)
  x = degrees.to_s.rjust(1,"0")
  y = minutes.to_s.rjust(2,"0")
  z = seconds.to_s.rjust(2,"0")
  string = %(#{x}#{DEGREE}#{y}\'#{z}\")
  p string
end

def dms(float)
  degree = float.to_i
  if float % 1 == 0
    minute = 0
    second = 0
  else
  minute = ((float - degree)*60)
  second = (minute - minute.to_i)*60
  end
  format_to_degrees(degree, minute.to_i, second.to_i)
end

# Test Cases
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")