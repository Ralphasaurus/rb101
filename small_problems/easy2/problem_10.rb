array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# line 1 is assigning the collection to a variable named array1
# line 2 is assigning an empty array to a variable named array2
# line 3 is iterating over array1 with the each method appending each value into array2
# line 4 is iterating over array1 and mutating the values to upcase if they start --
# with 'C' or 'S'
# line 5 is printing array 2 which includes the mutated values because upcase! method --
# is called upon the values. They might be different collections but the contain --
# elements which are referencing the same location in memory.