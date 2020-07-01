# RB101-109 - Small Problems - Easy 4 - Multiples of 3 and 5
#
# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.

# Input: Integer
# Output Integer
# Data Structure: Array
#
# Create for loop to iterate through each number between 1 and number passed in
# If the number is evenly divisible by 3 or 5, add it to an array
# Inject array

def multisum(int)
  multiples = []
  for num in 1..int
    multiples << num if (num % 3 == 0) || (num % 5 == 0)
  end
  multiples.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
