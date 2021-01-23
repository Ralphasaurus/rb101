def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim

def cap2(str)
  str.capitalize
end

name2 = "bob"
cap2(name2)
puts name2