# RB101 - Lesson 3 Practice Problems Easy 2

# Question 1 - In this hash of people and their age, see if 'Spot' is present.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.include?('Spot')
# p ages.has_key?('Spot')
# p ages.key?('Spot')
# p ages.member?('Spot')

# All of my solutions were included as bonuses

# Question 2 - Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.swapcase!

# "The munsters are creepy in a good way."
p munsters_description.downcase.capitalize!

# "the munsters are creepy in a good way."
p munsters_description.downcase!

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.upcase!

# Solutions were correct but you did not need to downcase the second problem because the captialize method already downcases the rest of the characters after the first one.

# Question 3 - add ages for Marilyn and Spot to the existing hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# p ages.merge!(additional_ages)

# Question 4 - See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.include?('Dino')
# p advice.match?('Dino')

# Solution recommends using #match? which converts the pattern toa Regexp then returns a ture or false whether the regexp is matched str or not

# Question 5 - Show an easier way to write this array:

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# Solution is flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6 - How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << 'Dino'

# Question 7 - How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push('Dino', 'Hoppy')

# Question 8 - remove everything starting from "house".

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

p advice.slice!('Few things in life are as important as')

# Bonus - If you just use the #slice method then the return value would be 'Few things in life are as important as' but advice remains the full sentence.

# Can also do advice.slice(0, advice.index('house))

# Question 9 - Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
p statement.count('t')

# Question 10 - How could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
p title.center(40)