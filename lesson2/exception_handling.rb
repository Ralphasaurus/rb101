def increment_by_one(array)
  array.each {|num| num + 1} rescue puts "Cannot increment object"
end

a = [1,2,3,4,nil,6,7]

increment_by_one(a)

# divide.rb

# def divide(number, divisor)
#   begin
#     answer = number / divisor
#   rescue ZeroDivisionError => e
#     puts e.message
#   end
# end

# puts divide(16, 4)
# puts divide(4, 0)
# puts divide(14, 7)