#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 1

require 'pry'
require 'byebug'

# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']
binding.pry

int_arr = arr.map {|str| str.to_i}

p int_arr.sort { |a, b| b <=> a }

# Could have also made this condensed by 

arr.sort do |a, b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]

# Since strings are compared character by character, '11' would be evaluated to be lesser than '7'. We would need to compare them numerically by converting them to integers.