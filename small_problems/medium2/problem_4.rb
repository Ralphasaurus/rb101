# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Input: a string
# Output: a boolean

# Psuedo Code:
# - Turn the string into an array of characters
# - Iterate through array
# - check to see how many '(' there are
# - check to see how many ')' there are
# - if the two counts are equal return true
# - else false

def check_index(lead_arr, trail_arr)
  lead = lead_arr.sort
  trail = trail_arr.sort
  balanced = []
  lead.each_with_index do |_, index|
    if lead[index] <= trail[index]
      balanced << true
    else balanced << false
    end
  end
  balanced.all?(true)
end

def balanced?(string)
  array = string.chars
  counts = { leading: 0, lead_index: [], trailing: 0, trail_index: [] }
  array.each_with_index do |char, index|
    if char == '('
      counts[:leading] += 1
      counts[:lead_index] << index
    elsif char == ')'
      counts[:trailing] += 1
      counts[:trail_index] << index
    end
  end
  
  if counts[:leading] == counts[:trailing]
    check_index(counts[:lead_index], counts[:trail_index])
  else false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false