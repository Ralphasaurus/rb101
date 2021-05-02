a = [1,2,3,4,5,6,7,8,9,10]

def print_odds(array)
  p array.select { |num| num.odd? }
end

print_odds(a)

p a << 11
p a.prepend(0)