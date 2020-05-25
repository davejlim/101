# RB101-109 Small Problems - Easy 2

require 'pry'

# 1 - Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# puts "What is your name?"
# name = gets.chomp
# name = 'Teddy' if name = ''
# puts "#{name} is #{rand(20..200)} years old!"


# 2 - Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet. Do not worry about validating the input at this time.
# Note: 1 square meter == 10.7639 square feet

# puts 'Enter the length of the room in feet:'
# length = gets.chomp.to_f

# puts 'Enter the width of the room in feet:'
# width = gets.chomp.to_f

# square_feet = (length * width).round(2)
# square_inches = (square_feet * 12).round(2)
# square_centimeters = (square_feet * 30.48).round(2)

# puts "The area of the room is #{square_feet} square feet."
# puts "The area of the room is #{square_inches} square inches."
# puts "The area of the room is #{square_centimeters} square centimeters."

# 3 - Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# puts 'What is the bill total?'
# bill = gets.chomp.to_f

# puts 'What is the percentage you would like to tip?'
# percentage = (gets.chomp.to_f) / 100

# tip = (bill * percentage)
# total = (bill + tip).round(2)

# puts "The tip is $#{'%.2f' % tip}."
# puts "The total is $#{'%.2f' % total}."

# 4 - Build a program that displays when the user will retire and how many years she has to work till retirement.

# puts 'What is your age?'
# age = gets.chomp.to_i

# puts 'At what age would you like to retire?'
# retirement_age = gets.chomp.to_i

# age_difference = retirement_age - age

# puts "It's #{Time.now.year}. You will retire in #{Time.now.year + age_difference}."
# puts "You only have #{age_difference} years of work to go!"

# 5 - Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# puts "What is your name?"
# name = gets.chomp!

# if name.end_with?('!')
#   puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end 

# 6 - Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# (0..99).each { |num| puts num if num.odd? }

# numbers = (0..99)

# for n in numbers
#   puts n if n.odd?
# end

# 7 - Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# (1..99).each { |num| puts num if num.even? }

# numbers = (1..99)

# for num in numbers
#   puts num if num.even?
# end

# 8 - Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# puts 'Please enter an integer that is greater than 0:'
# integer = gets.chomp.to_i

# puts "Enter 's' to determine the sum 'p' for the product of all numbers between 1 and your entered integer:"
# choice = gets.chomp.downcase

# counter = 1
# numbers = []

# loop do
#   numbers << counter
#   break if counter == integer
#   counter += 1
# end

# def sum(array)
#   sum = 0
#   array.each { |num| (sum = sum + num)}
#   sum
# end

# def product(array)
#   product = 1
#   array.each { |num| (product = product * num)}
#   product
# end

# def sum(array)
#   array.inject(:+)
# end

# def product(array)
#   array.inject(:*)
# end

# choice == 's' ? (puts "The sum of the integers between is #{numbers.first} and #{numbers.last} is #{sum(numbers)}.") : (puts "The product of the integers between #{numbers.first} and #{numbers.last} is #{product(numbers)}.")

# 9 - String Assignment

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# This should print out 
# BOB
# BOB

# This is because save_name is pointed at the same object as name. Once we mutate the caller and modify the object that name points to, save_name is still pointed at that same object.
# name and save_name refer to the same string. When you apply the #upcase! method it mutates name in place and the value that save_name refernces also changes.

# 10 - What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# array2 should reflect teh changes made to array1 since each element of the array is still pointing at the same string object that was mutated in place.
# The #each loop simply copied the refernces from array1 to array2. Each array not only contains the same values but the same String objects.

# This can get you in trouble if you end up mutating array1 without thinking of the ramifications to other arrays that reference the same String objects.