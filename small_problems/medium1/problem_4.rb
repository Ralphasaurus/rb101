# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row of
# switches and toggle every one of them. You go back to the beginning, and on this
# second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back
# again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this
# process and keep going until you have been through n repetitions.


# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# input: integer representing the total number of lights and iterations
# output: an array
# // start in off

# // create a hash like this: {index0 => 0, index1 => 0, index2 => 1}
# // and switch the values either on or off... 0 or 1
# // after looping through the iterations (n) return an array all of the on lights (1's)
require 'pry'
require 'pry-byebug'

def toggle?(flip)
  flip == 'off' ? 'on' : 'off'
end

def toggle_all(bank)
  bank.each do |light, switch|
    bank[light] = toggle?(switch)
  end
end

def toggle_n(bank, iteration)
  bank.each do |light, switch|
    if light % iteration == 0
    bank[light] = toggle?(switch)
    end
  end
end

def on?(bank)
  bank.select {|light, switch| switch == "on"}.keys
end

def toggle(n)
  bank = (1..n).to_a.to_h {|switch| [switch, 'off']}
  toggle_all(bank)
  2.upto(bank.size) do |iteration|
  toggle_n(bank, iteration)
  end
  on?(bank)
end

# Test Cases:
p toggle(5) == [1, 4]
# p toggle(10) == [1, 4, 9]