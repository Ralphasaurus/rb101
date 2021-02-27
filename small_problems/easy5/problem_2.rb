# 1. define method that takes one input, an integer
# 2. figure out input integer is less than 60
# 3. if thats true then the hour block will be either 23 (if a neg) or 00 (if a pos)
# 4. if input integer is more than 60
# 5. divide (%) input by 60 to figure out how many hours you have
# 7. if you have more than 12 hours
# 8. divide (%) your hours by 12
# 9. the remainder will be your hours
# 10. if pos it will be after midnight (00..23)
# 11. if neg it will be before midnight (23..00)
# 12. store all these variables after calculations
# 13. use string interpolation to display them in a hh:mm format "#{hour}:#{min}"

def time_of_day(int)
  storage = [":"]
  hours = ((int / 60) % 24).to_s
  minutes = (int % 60).to_s
  
  minutes.size < 2 ? storage << ("0" + minutes) : storage << minutes
  hours.size < 2 ? storage.prepend("0" + hours) : storage.prepend(hours)
  storage.join
end

p time_of_day(-686)
p time_of_day(754)

# # *Test Cases*
# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"