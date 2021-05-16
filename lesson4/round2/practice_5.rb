flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

i = 0
flintstones.each_with_index do |name, index|
  if name.include?("Be")
    i = index
  end
end
p i

# Or...
flintstones.index { |name| name[0, 2] == "Be" }