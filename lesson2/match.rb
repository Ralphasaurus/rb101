def find_match(string)
  if /lab/ =~ string
    puts string
  end
end

find_match("labyrinth")
find_match("elaborate")