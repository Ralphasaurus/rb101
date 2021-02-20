# Write a method that takes a year as input and returns the century. The return value
# should be a string that begins with the century number, and ends with st, nd, rd, or
# th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the
# 20th century.

def century(year)
  cent = (year / 100) + 1
  year.to_s.end_with?('0') ? cent -= 1 : cent
  chars_array = cent.to_s.chars
  
  if chars_array[-2] == '1'
      chars_array.push('th')
  end
  
  case chars_array[-1]
  when '1'
    chars_array.push('st') unless chars_array[-2] == '1'
  when '2'
    chars_array.push('nd') unless chars_array[-2] == '1'
  when '3'
    chars_array.push('rd') unless chars_array[-2] == '1'
  else chars_array.push('th') unless chars_array.include?('th')
  end
  p chars_array.join
end


# Examples and Test Cases:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'