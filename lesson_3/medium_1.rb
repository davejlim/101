require 'pry'

# RB101 Lesson 3 Practice Problems Medium 1

# Question 1 - For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times { |number| puts (' ' * number) + 'The Flintstones Rock!' }

# Question 2 - The result of the following statement will be an error. Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Solution - this will raise and error because (40+2) results in an integer while it is being concatenated to a string

# Question 3 - Write a method that handles 0 or negative numbers.

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(10)

def new_factors(number)
  divisor = number
  factors = []
  loop do
    if number % divisor == 0
      factors << number / divisor
    else
      return
    end
    divisor -= 1
  end
  factors
end

p new_factors(10)

# Solution

# while divisor > 0 do
#   factors << number / divisor if number &% divisor == 0
#   divisor -= 1
# end

# Bonus 1 - The purpose of number % divisor == 0 is to ensure that you are appending actual factors of the number
# Bonus 2 - The second to last line of factors is to ensure that you return the factors value when calling the method
