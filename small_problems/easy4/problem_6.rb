# 1) iterate over the array
# 2) upon each iteration add the previous value to the current value
# 3) store this value in a new array
# 4) return this new array

def running_total(array)
  num = 0
  array.map do |number|
    num = number + num
  end
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []