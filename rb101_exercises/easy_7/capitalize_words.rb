# RB101-109 - Small Problems - Easy 7 - Capitalize Words
#
# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.
#
# You may assume that words are any sequence of non-blank characters.

# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Convert string to an array
# Iterate through the array
# Transform each element with capitalize
# Join the array back into a string

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def further_word_cap(str)
  array_of_str = str.split
  array_of_str.each do |word|
    word.downcase!
    word[0] = word[0].upcase
  end

  array_of_str.join(' ')
end

p further_word_cap('four score and seven')
p further_word_cap('the javaScript language')
p further_word_cap('this is a "quoted" word')

p further_word_cap('four score and seven') == 'Four Score And Seven'
p further_word_cap('the javaScript language') == 'The Javascript Language'
p further_word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

