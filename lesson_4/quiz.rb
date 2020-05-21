# RB101 - Lesson 4. Ruby Collections  Quiz

# Question 4-6 - Identify the line of code that is causing the error.

# snake case

# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# sentence = 'The sky was blue'
# p snake(sentence) # => 'the_sky_was_blue'

# camel case

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

# sentence = 'The sky was blue'
# p camel(sentence) # => 'TheSkyWasBlue'

# upper snake case

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
       break if current_word == words.size

    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end

sentence = 'The sky was blue'
p upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'