# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# input: none, just call the method
# output: 
#         -32 hexadecimal characters in a string
#         -grouped into 5 sections, 8-4-4-4-12 characters

# hexidecimal characters -- 0-9, a-f
def create_uuid
  hex = ('0'..'9').to_a + ('a'..'f').to_a
  uuid = ''
  sections = [8,4,4,4,12]
  sections.each_with_index do |section, index|
    section.times { uuid += hex.sample }
    uuid += '-' unless index == sections.size - 1
  end
  p uuid
end

create_uuid
