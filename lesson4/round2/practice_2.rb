ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster family hash:

total = 0
ages.each { |_,v| total += v }
p total

# Or...
# ages.values.inject(:+)
# is a more eloquent solution...
