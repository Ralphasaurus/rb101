require 'pry'
require 'pry-byebug'
# COMMANDS = ['n', 'PUSH', 'ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP', 'PRINT']
def examine_command(input)
  if /[0-9]/ =~ input
    input.to_i
  else input
  end
end

def minilang(input_string)
  stack = []
  register = 0
  input = input_string.split(' ')

  until input.empty?
    current_input = input.shift
    if examine_command(current_input).is_a?(Integer)
      register = current_input.to_i
    else 
      case current_input
      when 'PUSH'
        stack << register
      when 'PRINT'
        puts register
      when 'POP'
        register = stack.pop
      when 'MULT'
        register = stack.pop * register
      when 'ADD'
        register = stack.pop + register
      when 'SUB'
        register = register - stack.pop
      when 'DIV'
        register = register / stack.pop
      when 'MOD'
        register = register % stack.pop
      end
    end
  end
end

minilang('10 PUSH 25 MULT PRINT')
# 250

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)