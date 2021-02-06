***each method***
-used for iterating over a collection
-passes one argument to the block for arrays and strings
-passes two arguments to the block for hashes 
-returns the original collection

***select method***
-used for selection of a collection
-passes one or two arguments (two for hash)
-select evaluates the return value of the block, whether it is truthy or falsey
-select only cares about truthyness
-returns a new collection

***map method***
-used for transformation of a collection
-passes one or two arguments (two for hash)
-evaluates the return value of the block, and performs transformation upon the collection
-returns a new collection

*> keep in mind puts returns nil which is falsey!

*There's a table at the bottom of Lesson 4, Methods assignment for easy reference*