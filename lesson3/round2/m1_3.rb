def factors(number)
  divisor = number
  factors = []
  until divisor <= 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

p factors(-10)

# Bonus:
# What is the purpose of the number % divisor == 0 ?
  # -the purpose is to check if the current divisor goes evenly into the number
    
# Bonus 2:
# What is the purpose of the second-to-last line (line 8) in the method (the
# factors before the method's end)?
  # -the purpose of factors is to return the factors array upon method completion.
