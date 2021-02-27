# - use the chars method to break down the input into an array of characters
# - store this array in a variable
# - use index to store the characters you want in two new arrays by <<
# - join the objects in these new arrays together and convert to_i
# - before_midnight: 
#   - use the hour variable and multiply it by 60 to get the total minutes
#   - add the minutes
#   - add this total to -1440
# - after_midnight:
#   same as before_midnight except subtract from 1440

def after_midnight(t)
  hours_string = t[0,2]
  minutes_string = t[3,2]
  total_minutes = (hours_string.to_i * 60) + minutes_string.to_i
  if total_minutes == 1440
    total_minutes = 0
  end
  p total_minutes
end

def before_midnight(t)
  hours_string = t[0,2]
  minutes_string = t[3,2]
  total_minutes = (hours_string.to_i * 60) + minutes_string.to_i
  if total_minutes == 0
    new_total = 0
  else
    new_total = -1440 + total_minutes
  end
  p new_total
end

# Test Cases

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == -686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0