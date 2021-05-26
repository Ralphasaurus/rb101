1. What is the return value of the following code? why?
[1, 2, 3].reject do |num|
  puts num
end

We are calling the #reject method on an array with 3 integer elements with a block.
There is a block parameter |num|. Upon each iteration of the reject method the block
is calling the puts method on the local variable num. The reject method evaluates the
return of the block upon each iteration and uses it to fill a new array. The
qualification to fill this new array is that the return value from the block has
to be *falsey*. Since the puts method will always return nil as well as print out the
value num, each iteration is going to return nil because 'puts nil' is the last line
in the block. Since each iteration returns nil all of the values associated with
the array will be put into a new array and returned by the reject method.

2. What is sorting?

Sorting is the ordering of a collection by some criteria.

3. What does the #map method do?

The map method uses the return value of a block to return a new array by
performing transformation upon a collection based on some criteria.

4.      arr1 = ["a", "b", "c"]
        arr2 = arr1.dup
        arr2.map! do |char|
          char.upcase
        end

what do you expect arr1 to return?
what do you expect arr2 to return?

arr1 will return it's original value ['a', 'b', 'c']. The reason for this is that
the #dup method creates a shallow copy of the arr1 collection. The variables within
arr1 are copied but not the objects they reference. So when we initialize arr2 and
set it to arr1.dup it's just that. arr2 will return ['A', 'B', 'C']. The reason
for this is that when we call the #map! method upon arr2 it replace the items
of self with the values returned by the block. char.upcase might not be a destructive
method in itself but the way that the !map method works it might as well be.

5. What is meant by truthy is Ruby?

Truthy is a term used in Ruby to describe all objects except 'nil' and 'false'.
Every object in Ruby when used in a conditional statement has a truthy value, except
for nil and false. 

6. How are arrays sorted in Ruby?

Arrays are sorted in an 'element-wise' manner. This means that Ruby evaluates each
element one by one and compares it to the other objects using the <=> comparison
method determined by the object type. There are different comparison types based
upon the type of object you are dealing with be it string, integer, etc.

7. What is Selection?

Selection is the term used to describe picking out some item/element from a
collection based on a certain criteria.

8. Does the #count method here use the return value of the block?
      ['ant', 'bat', 'caterpillar'].count do |str|
        str.length < 4
      end

Yes, the count method is using the return value of the block to evaluate what to
return itself. Specifically the *truthiness* of the return value of the block. In
this case, if the str variable's length as determined by the
#length method is less than 4 than the count method will count it.

9. How many arguments does the each method take when called upon a hash?

The each method will take two arguments, one for the key and one for the value.
In that order.

10. what will the following code return? why?
    ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
      hash[value[0]] = value
    end

Here we are calling the #each_with_object method on an array. The each with object
method returns a new object based on the return value of the block. The object
type is determined by the second parameter in the block. The value is the first
parameter. This parameter holds the value of each of the elements in the original
collection upon iteration. So here we are creating a new hash object. And the return
value of the block is deciding what populates this hash. In this case it's using
the first indexed character of each string element within the array as the key.
And the string element as the value. So it will return:
  { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }












