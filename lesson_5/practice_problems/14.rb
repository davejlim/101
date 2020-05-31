#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 14

require 'pry'
require 'pry-byebug'

# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Input - hash
# Output - array
# Data Structure - array

# - initialize a new array
  # - iterate through the values of hsh
    # - access the :colors values
      # - capitalize them
      # - add them into the new array
    # access teh :size values
      # - upcase them
      # - add them into the new array

output_arr = []

hsh.each do |produce, info|
  binding.pry
  if info[:type] == 'fruit'
    output_arr << info[:colors].map do |color|
      color.capitalize
    end
  else
    output_arr << info[:size].upcase
  end
end

p output_arr