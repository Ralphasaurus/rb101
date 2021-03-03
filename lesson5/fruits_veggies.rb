# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables. The sizes should
# be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# return value::>
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
returned_array = []
hsh.each_pair do |name, details|
  if details[:type] == 'fruit'
    returned_array << details[:colors].map {|color| color.capitalize}
  else
    returned_array << details[:size].upcase
  end
  returned_array
end
p returned_array

# this works but you can use the map method instead of each_pair method
# to return an array instead of appending to a new array. map method for hash
# is able to accept two arguments...


