***Problem***
Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from the original Array.

INPUT = array of numbers
OUTPUT =  array of running totals

***Examples and Test Cases***
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

***Data Structures and Algorithms***
1) iterate over the array
2) upon each iteration add the previous value to the current value
3) store this value in a new array
4) return this new array

*** Code with Intent***

