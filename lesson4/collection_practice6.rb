flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Amend this array so that the names are all shortened to just the first three characters:

flint_arr = flintstones.map do |name|
  name.chars[0,3].join
end

p flint_arr