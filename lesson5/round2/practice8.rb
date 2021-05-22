hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# Using the each method, write some code to output all of the vowels from the strings.

hsh.each_value do |arr|
  arr.each do |string|
    string.chars.each { |char| puts char if char =~ /[aeiou]/ }
  end
end