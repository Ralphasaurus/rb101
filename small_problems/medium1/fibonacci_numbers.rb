# recursive

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

p fibonacci(12)

# procedural

def fib(n)
  # create array containing the first two fibonacci numbers
  fibo = [1,1]
  # create loop with break condition: the size of the array = to the input number
  while fibo.size != n do
    # append the sum of the preceding two elements of the array
    fibo << fibo.last(2).sum
  end
  # return the last element in the array (the nth fibonacci number)
  fibo.last
end
p fib(12) == 144
p fib(20) == 6765