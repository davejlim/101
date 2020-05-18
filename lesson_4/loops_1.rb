# RB101 Lesson 4 Ruby Collections Loops 1 Review

# Question 1 - Modify the code so the loop stops after the first iteration.

# loop do
#   puts 'Just keep printing...'
#   break
# end

# Question 2 - Modify the code so each loop stops after the first iteration.

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end

#   break
# end

# puts 'This is outside all loops.'

# Question 3 - Modify the following loop so it iterates 5 times instead of just once.

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end

# Question 4 - Modify the code below so the loop stops iterating when the user inputs 'yes'.

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# Question 5 - Modify the code below so "Hello!" is printed 5 times.

# say_hello = 1

# while say_hello <= 5
#   puts 'Hello!'
#   say_hello += 1
# end

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# Question 6 - Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = [] 

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# Question 7 - The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 1

until count == 11
  puts count
  count += 1
end

# Question 8 - Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

count= 0 

until count >= numbers.size
  puts numbers[count]
  count += 1
end

# Question 9 - The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
  puts i if i.odd?
end

# Question 10 - Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for f in friends
  puts "Hello #{f}!"
end