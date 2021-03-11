# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars. The
# hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle, and the other
# end at the upper-right.

def triangle(n)
  arr = []
  space = (n - 1)
  star = 1
  
  until n == 0 do
    (space).times do
      arr.push(" ")
    end
    (star).times do 
      arr.push("*")
    end
    puts arr.join
    arr.clear
    space -= 1
    star += 1
    n -= 1
  end
end

triangle(10)

# Example:: 

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****