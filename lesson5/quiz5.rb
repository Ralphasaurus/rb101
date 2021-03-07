arr = [['a','b'],['c','d']].map do |sub_arr|
  sub_arr.map do |string|
    string.upcase
  end
end

p arr

arr2 = [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

p arr2