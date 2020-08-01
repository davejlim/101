# RB101-109 - Small Problems - Easy 8 - fizzbuzz
#
# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and
# 5, print "FizzBuzz".

# Input: Two Integers
# Output: String
# Data Structure: Array

# Approach:
# Create an array of the range from the first to the second argument passed in
# Initialize a fizzbuzz_arr
# Iterate through the array of the range
# Create an if statement
#   If the modulo of the number divided by 3 and 5 is 0
#     Add 'FizzBuzz' to the new array
#   If the modulo of the number divided by 3 is 0
#     Add 'Fizz' to the new array
#   If the modulo of the number divided by 5 is 0
#     Add 'Buzz' to the new array
#   Else
#     Add the number to the new array
# Return the new array

def fizzbuzz(first, last)
  fizzbuzz_arr = []
  (first..last).to_a.each do |number|
    if number % 3 == 0  && number % 5 == 0
      fizzbuzz_arr << 'FizzBuzz'
    elsif number % 3 == 0
      fizzbuzz_arr << 'Fizz'
    elsif number % 5 == 0
      fizzbuzz_arr << 'Buzz'
    else
      fizzbuzz_arr << number
    end
  end

  fizzbuzz_arr.join(', ')
end

p fizzbuzz(1, 15)
