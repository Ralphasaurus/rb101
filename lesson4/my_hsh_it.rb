movies = {bladerunner: 1988, batman: 1986, speed: 1999, starwars: 1979}
counter = 0
keys_array = movies.keys

loop do
  break if counter == movies.size
  movie = keys_array[counter]
  puts movie
  movie_date = movies[movie]
  puts movie_date
  puts "#{movie} was released in #{movie_date}"
  counter += 1
end

puts "none of these dates are probably accurate..."