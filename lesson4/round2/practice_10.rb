munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has
# an additional "age_group" key that has one of three values describing
# the age group the family member is in (kid, adult, or senior). Your
# solution should produce the hash below.

munsters.each do |k,v|
  if v['age'] < 18
    v['age_group'] = 'kid'
  elsif v['age'] > 18 && v['age'] < 61
    v['age_group'] = 'adult'
  else v['age_group'] = 'senior'
  end
end

p munsters

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

