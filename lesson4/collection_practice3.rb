ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater
# reject method:
# Returns a new hash consisting of entries for which the block returns false

ages_2 = ages.reject do |k,v|
  v > 100
end

p ages_2