require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

# ...Methods...
def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(input)
  input != 0
end

def add(a, b)
  puts a.to_f + b.to_f
end

def subtract(a, b)
  puts a.to_f - b.to_f
end

def divide(a, b)
  puts a.to_f / b.to_f
end

def multiply(a, b)
  puts a.to_f * b.to_f
end

def operator_to_message(op)
  case op
  when '1'
    "adding"
  when '2'
    "subtracting"
  when '3'
    "dividing"
  when '4'
    "muliplying"
  end
end

# ...Local Variables...
input1 = ""
input2 = ""
operator = ""

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['name_validate'])
  else
    break puts "Hi #{name}!"
  end
end

loop do
  loop do
    prompt(MESSAGES['first_number'])
    input1 = gets.chomp
    if valid_number?(input1)
      break
    else prompt(MESSAGES['number_validate'])
    end
  end
  loop do
    prompt(MESSAGES['second_number'])
    input2 = gets.chomp
    if valid_number?(input2)
      break
    else prompt(MESSAGES['number_validate'])
    end
  end
  
  operator_prompt = <<-MSG
    Which operation would you like to perform?
      1) add
      2) subtract
      3) divide
      4) multiply
  MSG
  prompt(operator_prompt)
  
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_validate'])
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

  result = case operator
           when "1"
             add(input1, input2)
           when "2"
             subtract(input1, input2)
           when "3"
             divide(input1, input2)
           when "4"
             multiply(input1, input2)
           else prompt("please enter a valid response.")
           end
  puts result
  prompt(MESSAGES['continue'])
  input3 = gets.chomp
  break unless input3.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
