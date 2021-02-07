ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237, "Tiny" => 2 }

# Pick out the minimum age from our current Munster family hash.

# long and terrible way...

# ages = ages.values
# counter = 0
# current_age = ages[0]

# loop do
#   break if counter >= ages.size
#   if ages[counter] < current_age
#     current_age = ages[counter]
#   end
#   counter += 1
# end

# p current_age
puts "simple way..."
p ages.values.min
# 1) store first age from ages array as current age variable
# 2) compare next age to current age
# 3) if next age is less than current age
# 4) reassign next age to current age
# 5) repeat steps 2-4
# 6) break if counter = ages.size
# 7) return current age