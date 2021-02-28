munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.
age_array = []
age_array << munsters["Herman"]["age"]
age_array << munsters["Grandpa"]["age"]
age_array << munsters["Eddie"]["age"]
p age_array.sum

# or
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end
p total_male_age