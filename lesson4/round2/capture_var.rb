arr = [1,2,3,4,5]

odd, even = arr.partition do |i|
    i.odd?
  end
  
p odd
p even