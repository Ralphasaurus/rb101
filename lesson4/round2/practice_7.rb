statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which each
# letter occurs in this string:

# example...
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

hash = {}
statement.chars.each do |letter|
  hash.include?(letter) ? hash[letter] += 1 : hash[letter] = 1
end
p hash