# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

def operation_to_message(op)
  word = case op
          when '1'
            'Adding' # note that you don't need to put the return here because the case is the only expresison in the method
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end

  word
end

prompt(messages('welcome', 'en'))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  number2 = ''
  operator = ''

  loop do
    prompt(messages('first_number', 'en'))
    number1 = Kernel.gets().chomp() # .chomp() method ensures that the newline character is removed from the input string

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', 'en'))
    end
  end

  loop do
    prompt(messages('second_number', ))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', 'en'))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to  perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)
  
  loop do
    operator = Kernel.gets().chomp()
  
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt(messages('another_calculation', 'en'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt (messages('goodbye', 'en'))
