# RB101-109 - Small Problems - Easy 5 - Letter Counter (Part 1)
#
# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

# Input: String
# Output: Hash
# Data Structure: Arrays and Hashes
#
# Approach:
# Split string into array of words
# Iterate through each array of words
  # Count length of word
  # Create key value pair for length
  # Increment value in key value pair if it exists

# Part 2 - Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For instance, the length of "it's"
# is 3, not 4.

def word_sizes(str)
  word_length_hash = {}
  str.split(' ').each do |word|
    length = word.gsub(/[^a-zA-z]/, '').length
    if word_length_hash[length] == nil
      word_length_hash[length] = 1
    else
      word_length_hash[length] += 1
    end
  end
    word_length_hash
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
