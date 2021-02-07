flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}

# each_with_index method is called upon the array iterating though and
# the block is assigning the pairs to the flint_hash variable.
flintstones.each_with_index do |item, index|
  flint_hash[item] = index
end

p flint_hash