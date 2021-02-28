hsh = {
      first: ['the', 'quick'],
      second: ['brown', 'fox'],
      third: ['jumped'],
      fourth: ['over', 'the', 'lazy', 'dog']
}

# Using the each method, write some code to output all of the vowels from the strings.

VOWELS = %w(a e i o u)
vowels = []
hsh.each_pair do |_, hash_value|
  joined_string = hash_value.join.chars
  joined_string.each do |character|
    if VOWELS.include?(character)
      vowels << character
    end
  end
p vowels
end

