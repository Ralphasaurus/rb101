# Replace the word "important" with "urgent" in this string:

# psudo
# need to access the word within the string
# and remove it
# replacing it with another string
# the method will mutate the data so end your method name with a bang!

advice = "Few things in life are as important as house training your pet dinosaur."

def replace_word!(string)
  string.split.map! do |word|
    if word == "important"
      word = "urgent"
    end
    word
  end.join(' ')
end

p replace_word!(advice)
p advice ## this variable is not mutated... MUTATE IT! 
# also maybe create a flash card that just gives the code and asks if it will
# mutate the data. itd be a good question...challenging.