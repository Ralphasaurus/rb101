munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each_key do |name|
  case munsters[name]["age"]
  when (0..17)
    munsters[name].merge!({"age_group" => "kid"})
  when (18..64)
    munsters[name].merge!({"age_group" => "adult"})
  when (65..)
    munsters[name].merge!({"age_group" => "senior"})
  end
end

p munsters

#Psudo Code
# 1) iterate through the sub hash age value's
# 2) check to see if they fall in either kid, adult, or senior range
# 3) create a new sub hash for key: age_group, value: kid, adult, or senior
# 4) assign the value 

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family
# member is in (kid, adult, or senior). Your solution should produce the hash below.

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior
# is aged 65+.

# EXAMPLE OUTPUT:
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }





