def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# 1. define method that takes 2 arguments
# 2. if bonus is true return half of the salary
# 3. else return 0