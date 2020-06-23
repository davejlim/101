# RB101-109 Small Problems - Easy 3 - Multiplying Two Numbers

require 'pry'
require 'pry-byebug'

# Create a method that takes two arguments, multiplies them together,
# and returns the result.

def multiply(first, second)
  first * second
end

p multiply([1, 2, 3], 3)

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is
# the result of multiplying a number by itself).

def square(int)
  multiply(int, int)
end

p square(5)
p square(-8)

# What if we wanted to generalize this method to a "power to the n"
# type method: cubed, to the 4th power, to the 5th, etc. How would we go
# about doing so while still using the multiply method?

def powered(int, p)
  num = 1
  p.times do
    num = multiply(num, int)
  end
  num
end

p powered(2, 2)
p powered(2, 3)
p powered(2, 0)
p powered(2, 1)
