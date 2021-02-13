# In this exercise, you will write a function named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise. Note that
# we are looking for a boolean result instead of a truthy/falsy value as returned by ||
# and &&.

#algorithms
# false conditions: false, false -- true, true
# true conditions: true, false -- false, true
# if 

def xor?(event1, event2)
  array = [event1, event2]
  case array[0]
  when true
    if array[1] == false
      true
    else false
    end
  when false
    if array[1] == true
      true
    else false
    end
  end
end

# # Examples and Test cases
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false