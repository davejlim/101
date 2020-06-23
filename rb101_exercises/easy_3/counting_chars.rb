# RB101-109 Small Problems - Easy 3 - Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

# Input: String
# Output: String
# Data Structure: Array

# initialize and assign variable to input from user
# convert to array without spaces
# iterate through array elements
# sum up each element length
# display element length and original input

puts "Please write word or multiple words:"
phrase = gets.chomp

phrase_array = phrase.split()

length = 0

phrase_array.each do |word|
  length += word.size
end

puts "There are #{length} characters in \"#{phrase}\"."
