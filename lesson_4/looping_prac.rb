# RB101 Lesson 4 Ruby Collections Looping Practice

# iterating over an array with a loop
arr = [1, 2, 3, 4, 5]

ele = 0

loop do
  break if ele == arr.size
  arr[ele] += 1
  ele += 1
end

puts arr 

# iterating over a hash with a loop
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

counter = 0
pets = number_of_pets.keys

loop do
  break if counter == number_of_pets.size
  puts "I have #{number_of_pets[pets[counter]]} #{pets[counter]}"
  counter += 1
end