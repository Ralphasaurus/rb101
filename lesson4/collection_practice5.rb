flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

def find_pattern(arr, string)
  element = arr.select { |name| name.include? string }
  arr.rindex(element[0])
end

p find_pattern(flintstones, "Be")
p find_pattern(flintstones, "Fr")
