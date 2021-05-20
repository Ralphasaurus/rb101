BLOCKS = { 1 => ['B', 'O'], 2 => ['X', 'K'], 3 => ['D', 'Q'],
           4 => ['C', 'P'], 5 => ['N', 'A'], 6 => ['G', 'T'],
           7 => ['R', 'E'], 8 => ['F', 'S'], 9 => ['J', 'W'],
           10 => ['H', 'U'], 11 => ['V', 'I'], 12 => ['L', 'Y'],
           13 => ['Z', 'M']
          }

def block_word?(string)
  used_keys = []
  array = string.upcase.chars
  BLOCKS.each do |key, block|
    if array.include?(block[0]) || array.include?(block[1])
      used_keys << key
    end
  end
  used_keys.size == array.size
end

# Test Cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.
