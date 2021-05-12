def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if input_string.size != 4
    false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word) # checks to see if between 0-255
    end
    true
  end
end

# problem
# - handle false condition
# -handle more or fewer components

# test cases
p dot_separated_ip_address?("1.2") # == false
p dot_separated_ip_address?("1.2.3.4.5") # == false
p dot_separated_ip_address?("1.2.3.4") # == true

# Alyssa reviewed Ben's code and says "It's a good start, but you missed a few
# things. You're not returning a false condition, and you're not handling the
# case that there are more or fewer than 4 components to the IP address (e.g.
# "4.5.5" or "1.2.3.4.5" should be invalid)."

# Help Ben fix his code.