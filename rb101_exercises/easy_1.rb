# RB101-RB109 Small Problems - Easy 1

require 'pry'

# 1 - Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, freq)
  freq.times do
    puts string
  end
end

repeat('Hello', 3)

# 2 - Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd?(int)
  int % 2 != 0
end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# 3 - Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(number)
  number.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# 4 - Write a method that counts the number of occurrences of each element in a given array. The words in the array are case-sensitive: 'suv' != 'SUV'. ` 
# Once counted, print each element alongside the number of occurrences.


# def count_occurrences(item_list)
#   item_hash = {}

#   item_list.each do |item|
#     item_hash[item] = item_list.count(item)
#   end

#   puts item_hash
# end



# This was correct except for the implementation of how to display the desired output. We needed to create a second #each method to print it out in the correct format.

def count_occurrences(item_list)
  item_hash = {}

  item_list.each do |item|
    item.downcase!
    item_hash[item] = item_list.count(item)
  end

  item_hash.each do |type, number|
    puts "#{type} => #{number}"
  end
end

vehicles = [
  'CAR', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# further exploration - try to solve the problem when words are case insensitive

# 5 - Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(string)
  string_array = string.split(' ')
  string_array.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# This could have been condensed into one line with string.split.reverse.join(' ')

# 6 - Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Input: one argument - string
# Output: string
# Data Structure: Array

# Requirements: 
  # - If word has five or more characters, it is reversed
  # - If string has multiple words, there should be spaces included
  # - Only letters and spaces

# - define method with one argument passing in the string
# - initialize and split string into an array
# - create a loop iterating through the elements of the array
  # - if an element has 5 or more characters, reverse
# join the array back into a string

def reverse_words(string)
  string_list = string.split

  string_list.each do |word|
    word.reverse! if word.length >= 5
  end

  string_list.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# 7 - Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# Input: One argument - positive integer
# Output: String of alternating 1s and 0s, starting with 1; length == integer
# Data Structure: string

# - define method with one argument passing in the positive integer
# - set empty string
# - create outer loop that adds 1 to string
  # - breaks if string.length == integer
# - create inner loop that a adds 0 to string
  # - breaks if string.length == integer
  # - else next

# def stringy(integer)
#   stringy_output = Array.new(integer)

#   stringy_output.each do |char|
#     if stringy_output.index(char).even?
#       stringy_output[stringy_output.index(char)] = '1'
#     else
#       stringy_output[stringy_output.index(char)] = '0'
#     end
#   end

#   stringy_output.join()
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# I originally thought of using the times method but decided to use nested loops. Once the nested loops didn't work because I couldn't have broken out of the inner loop
# I proceeded with an if statement inside of an #each method.
# This could have been written more succinctly with the times method.

def stringy(integer)
  stringy_output = []

  integer.times do |index|
    number = index.even? ? 1 : 0
    stringy_output << number
  end

  stringy_output.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
