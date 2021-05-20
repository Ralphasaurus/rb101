# Write a program that reads the content of a text file and then prints the longest
# sentence in the file based on number of words. Sentences may end with periods (.),
# exclamation points (!), or question marks (?). Any sequence of characters that are
# not spaces or sentence-ending characters should be treated as a word. You should
# also print the number of words in the longest sentence.

text = File.read('text_file.txt')

array_of_sentences = text.split(/\.|\?|!/)
count_hash = {}
longest_sentence = ""
number_of_words = 0

array_of_sentences.each do |sentence|
  count_hash[sentence] = sentence.split.count
end

count_hash.each do |k,v|
  if v == count_hash.values.max
    number_of_words = v
    longest_sentence = k
  end
end

puts "The longest sentence is: #{longest_sentence}. It has #{number_of_words} words."

