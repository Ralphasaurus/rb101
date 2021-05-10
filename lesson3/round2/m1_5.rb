limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# what's wrong with the code and how would you fix it?

# When the code is ran ruby complains that you have an undefined local variable 
# or method called 'limit'. This is because the fib method is trying to compare
# the sum of first_num and second_num with limit. The limit variable is not defined
# within the method. It cannot access variables outside of it's scope unless they
# are defined as parameters and passed in as arguments. To fix this: define a
# parameter for the method to accept another variable. Then pass in this variable
# as an argument when calling the method.

