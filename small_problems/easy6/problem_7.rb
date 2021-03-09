# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half
# of the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half Array.


def halvsies(array)
  both = []
  arr1 = []
  if array.length.odd?
    ((array.length / 2) + 1).times do
      arr1 << array.slice!(0)
    end
  else (array.length / 2).times do 
      arr1 << array.slice!(0)
    end
  end
  both << arr1
  both << array
  both
end


# Test Cases
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]