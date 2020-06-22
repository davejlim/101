# RB101-109 Small Problems - Easy 3 - Arithmetic Integer

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

def prompt(msg)
  puts "=> #{msg}"
end

operator = %i(+ - * / % **)
values = []

prompt "Enter the first number:"
values[0] = gets.chomp.to_i

loop do
  prompt "Enter the second number:"
  values[1] = gets.chomp.to_i
  break unless values[1] == 0
  prompt "Uh oh! Your second number cannot be 0. Try again."
end

#prompt "#{first} + #{second} = #{first + second}"
#prompt "#{first} - #{second} = #{first - second}"
#prompt "#{first} * #{second} = #{first * second}"
#prompt "#{first} / #{second} = #{first / second}"
#prompt "#{first} % #{second} = #{first % second}"
#prompt "#{first} ** #{second} = #{first ** second}"

operator.each do |op|
  prompt "#{values[0]} #{op} #{values[1]} = #{values.inject(op)}"
end
