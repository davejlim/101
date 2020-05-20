# RB101 - Lesson 4 Ruby Collections - Practice Problems: Additional Practice

# Question 1 - Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}

flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash

# Question 2 - Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

# Question 3 - remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.each do |name, age|
#   ages.delete(name) if age >= 100
# end


young = ages.select do |name, age|
  age < 100
end

p young

# Question 4 - Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min

youngest = 99999999999999

ages.each do |name, age|
  youngest = age if age < youngest
end

p youngest

# counter = 0
# ages_array = ages.to_a

# loop do
#   ages.to_a


#   counter += 1
#   break if counter == ages.size
# end

# Question 5 - Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Bernie)

flintstones.each_with_index do |name, index|
  if name[0..1] == 'Be'
    p index
    break
  end
end

# Can also use the index method with flintstones.index { |name| name[0,2] == 'Be' }

# Question 6 - Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name.slice(0, 3)
end

p flintstones

# Question 7 - Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

frequency = {}

statement.each_char do |letter|
  frequency[letter] = statement.count(letter)
end

p frequency 

# Question 8 - What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers 

# Because shift removes the first element of self and returns it, the array will be modfiied as we iterate over it. Each calls the block once for each element passing that element as a parameter.
# 1
# 2 # this should actually be 3 because the 2 and 4 are removed from the shift(1)

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Pop removes the last element form self, if a number is given it will return an array of the last n elements

# 1
# 4 # this is incorrect as it should iterate to 2 next but 4 is being removed with the pop method

# This is important to show that iterators do not work on a copy of the original array. They operate on the original array in real time.

# Question 9 - This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

def titleize(string)
  title = string.split(' ')
  title.each do |word|
    word.capitalize!
  end
  title.join(' ')
end

p titleize(words)

# Question 10 - Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do | name, demo |
  if demo['age'] <= 17
    demo['age_group'] = 'kid'
  elsif demo['age'].between?(18, 64)
    demo['age_group'] = 'adult'
  else
    demo['age_group'] = 'senior'
  end
end

p munsters

# can also use a case statement

munsters.map do | name, demo |
  case demo['age']
  when 0..18
    demo['age_group'] = 'kid'
  when 18..65
    demo['age_group'] = 'adult'
  else
    demo['age_group'] = 'senior'
  end
end

