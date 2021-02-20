# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some
# other number, and then computes the sum of those multiples. For instance, if the
# supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(int)
  array = []
  current_num_3 = 0
  current_num_5 = 0
  
  
  loop do
    break if current_num_3 == (int / 3) * 3
    current_num_3 = current_num_3 + 3
    array << current_num_3
  end
  
  loop do
    break if current_num_5 == (int / 5) * 5
    current_num_5 = current_num_5 + 5
    array << current_num_5
  end
  
  array.uniq!
  array.sum
end

# my test case
p multisum(20) == 98

# Test Cases
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168