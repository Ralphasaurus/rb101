# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
puts "these will all print their original variable assignments"
# This is because within the method we have local variable to the method and
# are reassigning them. This does not effect the scope outside of the method.

# B

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
puts "This will also print their original variable assignments"
# Same reason as before

# C

def mess_with_vars(one, two, three)
  one.gsub!("one","two") # gsub! method is mutating.. subsitute "one" w/"two"
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
puts "This will print out the mutated version of the strings because gsub! is mutating"


