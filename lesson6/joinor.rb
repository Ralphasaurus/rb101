# Write a method called joinor that takes an array and returns a string
# with commas between each element and the word 'or' inserted after the
# last comma.

def joinor(array, sep = ', ', word = 'or')
  return "" if array.empty?
  if array.size == 1
    array.first.to_s
  elsif array.size == 2
    array.join(" " + word + " ")
  else
  last = " " + array.pop.to_s
  array.join(sep) + sep + word + last
  end
end

# Test Cases:
p joinor([]) == ""
p joinor([1]) == "1"
p joinor([1, 2]) == "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"