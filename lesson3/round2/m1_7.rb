munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


def mess_with_demographics(demo_hash)
  p demo_hash["Herman"].object_id
  p demo_hash.values[0].object_id
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# Spot got on the computer wrote the above method and typed this line of code:

p mess_with_demographics(munsters)
# Did the the family's data get ransacked? why? or why not?

# Yes it does. We are passing in the munsters argument to the method. And even
# though we are creating a new array out of the hash with the values method and
# calling the each method that returns self, we are still using the original objects
# inside of these calls and they are being modified by the each method's block.




