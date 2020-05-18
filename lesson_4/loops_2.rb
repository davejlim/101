# RB101 Lesson 4 Ruby Collections - Loops 2 Exercises

# Question 1 - Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

# numbers = [1, 2, 3, 4, 5]
# count = 0

# loop do
#   break if count == numbers.size
#   if numbers[count].odd?
#     puts "#{numbers[count]} is odd!"
#   else
#     puts "#{numbers[count]} is even!"
#   end
#   count += 1
# end

# Question 2 - Modify the following code so that the loop stops if number is equal to or between 0 and 10.

# loop do
#   number = rand(100)
#   puts number
#   break if (0..10).include?(number)
# end

# Question 3 - Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.

# process_the_loop = [true, false].sample

# if process_the_loop == true
#   loop do
#     puts 'The loop was processed!'
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

# Question 4 - Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i

#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# Question 5 - Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

# numbers = []
# counter = 0

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   counter += 1 # Did not need to create a counter since your break condition is solely utilizing the size of the numbers array
#   break if numbers.size >= 5
# end

# puts numbers

# Question 6 - Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop # could also use names.shift if you wanted to print from first to last
#   break if names.size == 0 # could also use #empty? method
# end

# Question 7 - Modify the block so that it prints the current number and stops iterating when the current number equals 2.

# counter = 1

# 5.times do |index| # the block parameter index represents the current iteration number
#   puts counter # you did not need to create counter because the times method counts from 0 to one less than the specified number
#   counter += 1
#   break if counter >= 2
# end

# numbers = [1, 2, 3, 4, 5]

# 5.times do |count|
#   break if count == numbers.size
#   if numbers[count].odd?
#     puts "#{numbers[count]} is odd!"
#   else
#     puts "#{numbers[count]} is even!"
#   end
# end

# Question 8 - Using next, modify the code below so that it only prints even numbers.

# number = 0

# until number == 10
#   number += 1
#   if number.even?
#     puts number
#   else
#     next
#   end
# end

# cleaner version:

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# Question 9 - Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   if number_a == 5 || number_b == 5
#     puts '5 was reached!'
#     break
#   end
# end

# the question prompted using the next method

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a == 5 || number_b == 5
  
#   puts '5 was reached!'
#   break
# end

# Question 10 - Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end