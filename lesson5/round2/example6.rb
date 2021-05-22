evaluation = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

p evaluation
# => [{ :c => "cat" }]

# We start with a multi-dimensional array that has two hashes as elements.
# We are calling the select method on this array with a block that has one parameter
# |hash| inside the block we are calling the any? method on each hash within 
# the multi-dimensional array. The any? method is defined with a block that takes two
# parameters |key, value|. Inside this block we have a comparison between value[0]
# and key.to_s. The block is checking to see if value[0] (the first character in the
# string value) is equal to the key.to_s. If every element in the hash resolves
# this comparison to true then the all? method will return true to the select method
# and select will return a new array populated by the elements that returned true
# from the all? method. The reason {a: 'ant'} is not included in this new array is
# because when the all? method was called on {a: 'ant', b: 'elephant'} b: 'elephant'
# did not pass the comparison and returned false. all? requires all of the elements
# to return true on the comparison to return true.... if we had chosen any? instead
# of all? this would have returned true.