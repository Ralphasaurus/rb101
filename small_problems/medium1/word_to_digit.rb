DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(string)
  DIGIT_HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  string
end

sentence = "My number is four zero six four nine nine one seven five nine"

word_to_digit(sentence)
# => "My number is 4 0 6 4 9 9 1 7 5 9"

# FURTHER EXPLORATION

def phone_format(string)
  num_array = string.split.select do |word|
    /[0-9]/ =~ word
  end
  area_code = num_array[0,3]
  area_code.prepend("(") << ")"
  first_three = num_array[3,3]
  last_four = num_array[6,4]
  phone_num = area_code.concat(first_three, ["-"], last_four).join
end

def replace_num_with_phone(string)
  removed =  string.split.select! do |word|
    /\D/ =~ word
  end.join(' ')
  p "#{removed} #{phone_format(string)}"
end

replace_num_with_phone(word_to_digit(sentence))
