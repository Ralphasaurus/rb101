def take_block(number, &chunk)
  chunk.call(number)
end

number = 45

take_block(number) do |num|
  puts "The number is #{num}"
end
