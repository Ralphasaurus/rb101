puts "Hi! What's your name?"
name = gets.chomp
age = rand(20..200)

def stuff(age, name)
  if name == ""
    name = "Teddy"
  end
  puts "#{name} is #{age} years old today!"
end

stuff(age, name)