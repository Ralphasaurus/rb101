arr = [11,31,42,44,66,3,2,99,88,102,111]

# method for removing every other item from the given array.

def every_other(arr)
  counter = 0
  x = 1
    while counter != arr.length do
      arr.delete_at(x)
      counter += 1
      x += 1
    end
    p arr
end
every_other(arr)