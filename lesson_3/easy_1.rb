# RB101 Lesson 3 Practice Problems Easy 1

# Question 1 - What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# My solution - [1, 2, 3] because there is a duplicate 2

# My solution was incorrect because .uniq didn't mutate the caller and the puts was on the original numbers object
# Also it is important to note that the puts method automatically calls to_s on its argument
# To get it to print as an array, you would need to use the p method which calls inspect on the argument or puts  numbers.inspect

# Question 2 - What is the difference between ! and ? in Ruby. Expain what would happen in the following scenarios:

# My solution - The ! mutates the caller meaning that the actual object is changed
# My solution - The ? is used in method names indicates or implies a boolean

# To be clear, ! or ? is par tof the method name is is not Ruby syntax!
# Even by seeing those characters, it all depends on the method implementation
# != means not equals
# ? : is the ternary operator for if...else or conditional operator a ? b : c 

# if a > b
#   result = x
# else 
#   result = y
# end

# can also be written as

# results = a > b ? x : y

# !!<some object> is used to turn any object into their boolean equivalent (remember that all objetcs are truthy in Ruby)
# !<some object> is used to turn any object into the opposite of their boolean equivalent

# Question 3 - Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.gsub!("important", "urgent")

# Question 4 - The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # This should delete the 2 as it is in the 1 position in the array
numbers.delete(1) # This should delete the 1 integger in the array

# Question 5 - Programmatically determine if 42 lies between 10 and 100; hint: use Ruby's range object in your solution

(10..100).to_a.include?(42)

# The solution uses #cover which is related to the Comparable module and actually check whether the item would fit between the end points in a sorted list
# and will return true EVEN if the item is not in the set implied by the Range.
# My solution is related to the Enumerable module and only checks whether the item is actually int eh complete set implied by the Range.

('a'..'z').cover?('yellow')
# true
('a'..'z').include?('yellow')
# false

# Question 6 - Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

puts famous_words.insert(0, 'Four score and ')

famous_words = "seven years ago..."

puts famous_words.prepend('Four score and ')

# Could have also used the following

'Four score and ' + famous_words
'Four score and ' << famous_words

# Question 7 - If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array: ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

p flintstones.flatten!

# Question 8 - Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

p flintstones.select{|k,v| k == 'Barney'}.flatten

# Could have also used #assoc

p flintstones.assoc('Barney')