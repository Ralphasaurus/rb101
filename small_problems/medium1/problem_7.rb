# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# puts "motherboard".gsub /board/, "land"
# With the gsub method we replace a 'board' string with a 'land' string.

def word_to_digit(string)
  puts string.gsub(/zero|one|two|three|four|five|six|seven|eight|nine/,
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' =>'4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9')
end

# word_to_digit('zero one two')
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'