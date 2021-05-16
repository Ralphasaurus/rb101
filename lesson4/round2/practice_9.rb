words = "the flintstones rock"

# recreate Ruby on Rails titlize method

def titlize(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

p titlize(words)