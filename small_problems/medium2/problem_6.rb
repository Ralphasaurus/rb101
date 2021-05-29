# right: One angle of the triangle is a right angle (90 degrees)
# acute: All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
# and all angles must be greater than 0: if either of these conditions is not
# satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle
# is a right, acute, obtuse, or invalid triangle.

# psuedo:
# - check for a valid triangle based on:
#       -sum of the angles must be 180 degrees
#       -all angles must be greater than 0
# - check to see which kind of triangle it is based on:
#       - right: has one angle that is 90
#       - acute: all 3 angles are less than 90
#       - obtuse: one angle is greater than 90

def is_valid?(arr)
  arr.reduce(:+) == 180 && arr.all? { |angle| angle > 0 }
end

def triangle(x,y,z)
  arr = [x,y,z]
  if is_valid?(arr)
    if arr.any? { |angle| angle == 90 }
      :right
    elsif arr.any? { |angle| angle > 90 }
      :obtuse
    else :acute
    end
  else :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid