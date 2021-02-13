def tip_calc (bill, tip)
  tip_amount = bill * (tip/100)
  total_bill_amount = bill + tip_amount
  output = [tip_amount, total_bill_amount]
end

puts "Tip Calc!"
puts "Please enter the amount of the bill:"
bill_amount = gets.chomp.to_f
puts "Please enter the desired percentage for your tip.(15, 20, etc)"
tip_percentage = gets.chomp.to_f

puts "The tip is $#{tip_calc(bill_amount,tip_percentage)[0]}"
puts "The total is $#{tip_calc(bill_amount,tip_percentage)[1]}"
# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.


# example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

