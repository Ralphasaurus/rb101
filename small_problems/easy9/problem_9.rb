# Write a method that determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade.

def get_grade(one, two, three)
  average = (one + two + three) / 3
  case average
  when (90..100)
    "A"
  when (80..89)
    "B"
  when (70..79)
    "C"
  when (60..69)
    "D"
  when (0..59)
    "F"
  end
end

p get_grade(50, 49, 30) == "F"
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"