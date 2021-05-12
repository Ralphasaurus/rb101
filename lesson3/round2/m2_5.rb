def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

# The above method does not mutate the original variables. 

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)
# But on line 12 we are reassigning the original variables to point
# to the return values from the method.

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"