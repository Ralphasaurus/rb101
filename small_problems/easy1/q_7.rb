def stringy(int, opt = 1)
  contain = []
  if opt == 1
    int.times {|i| i.odd? ? contain << "0" : contain << "1"}
  else
    int.times {|i| i.odd? ? contain << "1" : contain << "0"}
  end
    contain.join
end

puts stringy(6, 0) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'