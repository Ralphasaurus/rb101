hank = { name: "Hank",
         age: 34,
         weight: 170
       }
       
def change_name(name)
  name[:name] = "Charles"
end

def change_age(age)
  age = 44
end



change_name(hank)
puts hank[:name] # => Charles

change_age(hank[:age])
puts hank[:age] # => 34