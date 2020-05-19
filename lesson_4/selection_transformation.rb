# RB101 - Lesson 4 Collections - Selection and Transformation


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(type)
#   counter = 0
#   type_array = type.to_a
#   loop do
#     if type_array[counter][1] == 'Fruit'
#       puts type[type_array[counter][1]]
#     end
#     counter += 1
#     break if counter == type_array.size
#   end
# end

# def select_fruit(type)
#   type.select { |f,t| t == 'Fruit'}
# end

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# def select_fruit(type)
#   type_keys = type.keys
#   counter = 0
#   fruit = {}

#   loop do
#     if type[type_keys[counter]] == 'Fruit'
#       fruit.store(type_keys[counter], 'Fruit') # can also be formatted as fruit[type_keys[counter]] =  type[fruit[type_keys[counter]]]
#     end
#     counter += 1
#     break if counter >=  type_keys.size
#   end

#   p fruit
# end

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# Change method from creating a new array to mutating the original array

# def double_numbers(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     numbers[counter] = numbers[counter] * 2

#     counter += 1
#   end

#   numbers
# end

# original_array = [1, 2, 3, 4]
# p double_numbers(original_array)
# p original_array 

# What if we wanted to transform the numbers based on their position in the array rather than their value?

# def doubled_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     doubled_numbers << numbers[counter] if counter.odd?
#     counter += 1
#     break if counter == numbers.size
#   end

#   doubled_numbers
# end

# my_numbers = [1, 2, 3, 4]
# p doubled_numbers(my_numbers)

# For example, let's create a method called multiply that can take an additional argument to determine the transformation criteria.

def multiply(product, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    multiplied_numbers << product[counter] * multiplier
    counter += 1
    break if counter == product.size
  end

multiplied_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

# Recall our initial selection example of selecting the letter 'g' out of the alphabet. 
# Let's write a method called select_letter, that takes a string and returns a new string containing only the letter that we specified.

def select_letter(string, char)
  selected_string = ''
  counter = 0

  loop do
    selected_string << string[counter] if string[counter] == char
    counter += 1
    break if counter == string.size
  end

  selected_string
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

p select_letter(question, 'a').size