name = 'Bob'
save_name = name
save_name.upcase!

# Both of these variables are pointing to the same location in memory.
# Because assignment in ruby just assigns a reference to a variable, both name
# and save_name refer to the same string
# If you mutate that location as with the "upcase!" method it effects both.
p name.object_id 
p save_name.object_id
puts name, save_name