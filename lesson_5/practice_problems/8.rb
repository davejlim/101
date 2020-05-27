#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 8

require 'pry'

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# Input - hash with arrays as values
# Output - array of vowels from the strings
# Data Structure - 

# - create each method to iterate through all of the values of the hash
  # - create an each method to iterate through each of the elements of the array in the values of the hash
    # - create an each method to iterate through each of the elements of the string
      # - puts a character if it is included as a vowel

hsh.each do |key, strings|
  strings.each do |str|
    str.each_char do |char|
      puts char if ('aeiou').include?(char)
    end
  end
end