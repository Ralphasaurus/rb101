# input
words = "the flintstones rock"

# write your own implementaion of Rails "titleize" method.

# example output

words = "The Flintstones Rock"

def titleize(string)
  string_array = string.split
  string_array.map do
    |str| str.capitalize!
  end
  string_array.join(" ")
end

p titleize(words)