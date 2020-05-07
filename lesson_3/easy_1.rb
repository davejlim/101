# RB101 Lesson 3 Practice Problems Easy 1

# Question 1 - What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# My solution - [1, 2, 3] because there is a duplicate 2
# My solution was incorrect because .uniq didn't mutate the caller and the puts was on the original numbers object
# Also it is important to note that the puts method automatically calls to_s on its argument
# To get it to print as an array, you would need to use the p method which calls inspect on the argument or puts  numbers.inspect

# Question 2 - What is the difference between ! and ? in Ruby. Expain what would happen in the following scenarios:

# My solution - 

