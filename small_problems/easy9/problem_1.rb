# Create a method that takes 2 arguments, an array and a hash. The array will contain
# 2 or more elements that, when combined with adjoining spaces, will produce a person's
# name. The hash will contain two keys, :title and :occupation, and the appropriate values.
# Your method should return a greeting that uses the person's full name, and mentions the
# person's title and occupation.

# input: an array(2 or more elements) and a hash (2 keys, :title, :occupation)
# output: a greeting that uses the full name and mentions title and occupation

def greetings(array, hash)
  name = array.join(' ')
  job = hash[:title] + ' ' + hash[:occupation]
  
  "Hello #{name}! Nice to have a #{job} around."
end

# In this method we are returning a string with the name and job variables
# If we were to use puts it would print this to the screen but return nil...

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.