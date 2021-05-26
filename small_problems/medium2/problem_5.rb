# A triangle is classified as follows:

# - equilateral All 3 sides are of equal length
# - isosceles 2 sides are of equal length, while the 3rd is different
# - scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have lengths
# greater than 0: if either of these conditions is not satisfied, the triangle is
# invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments,
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
# on whether the triangle is equilateral, isosceles, scalene, or invalid.

# first decide whether it's a valid triangle.
# then decide what type of triangle.
# return the type of triangle or invalid in symbol form.

def is_triangle?(array)
  array.sort
  (array[0] + array[1] > array[2]) && (array.all? { |side| side > 0 })
end

def triangle(x,y,z)
  arr = [x, y, z]
  if is_triangle?(arr)
    true
  else :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid