require 'pry'

# RB101 - Lesson 3 Practice Problems: Hard 1

# Question 1 - What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting # I would expect that there would be a local variable error since greeting is instantiated in a block

# This answer is wrong. greeting is nil and there is no 'undefined method or local variable' exception. When you initialize a local variable wihtin an if block
# even if it doesn't get executed, the local variable is initialized to nil

# Question 2 - What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # should be just {:a => 'hi'}

# This was incorrect. informal_greeting was a reference to the original object. Then String#<< method was used which modified the objected that called it.
# The original object was changed which then impacts the value in greetings. 

#  Question 3 - What will be printed by each of these code groups?

# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # should print 'one'
puts "two is: #{two}" # should print 'two'
puts "three is: #{three}" # should print 'three'
# this is because the local variables initializied in the method are new local variables and different than the variables outside the method despite having the same name

# B
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # should print 'one'
puts "two is: #{two}" # should print 'two'
puts "three is: #{three}" # should print 'three'
# still should print the same because the local variables initialized in the method are new local variables

# C
def mess_with_vars(one, two, three)
  one.gsub!("one","two") # 'two'
  two.gsub!("two","three") # 'three'
  three.gsub!("three","one") # 'one'
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # should print 'two'
puts "two is: #{two}" # should print 'three'
puts "three is: #{three}" # should print 'one'
# should print 'two' because the new local variable created in the method is still pointing at the original object which is mutated

# Question 4 - Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. 
# Alyssa supplied Ben with a method called is_an_ip_number? that determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

# Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components 
# to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."
# Help Ben fix his code.

def is_an_number?(item)
  item.to_i >= 0 && item.to_i < 255
  binding.pry
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size == 4
    dot_separated_words.map { |word| is_an_number?(word)}
  else
    return false
  end
  return true
end

puts dot_separated_ip_address?('265.1.123.5')

# Ben's errors were not checking for exactly four components and not returning false instead of break

# Here is the solution from LS

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end