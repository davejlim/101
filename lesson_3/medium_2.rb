# RB101 - Lesson 3 Practice Probelms Medium 2

# Question 1 - Predict how the values and object ids will change throughout the flow of the code below:

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # different object_id
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # different object_id
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # different object_id
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # same as a_outer object_id since it's the same integer
#   puts

#   1.times do
#     a_outer_inner_id = a_outer.object_id
#     b_outer_inner_id = b_outer.object_id
#     c_outer_inner_id = c_outer.object_id
#     d_outer_inner_id = d_outer.object_id

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." # same as a_outer; note that there is the same object_id inside the block as outside the block
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block." # same as b_outer
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block." # same as c_outer
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block." # same as d_outer
#     puts

#     a_outer = 22
#     b_outer = "thirty three"
#     c_outer = [44]
#     d_outer = c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # new object_id
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # new object_id
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # new object_id
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # new object_id
#     puts


#     a_inner = a_outer
#     b_inner = b_outer
#     c_inner = c_outer
#     d_inner = c_inner[0]

#     a_inner_id = a_inner.object_id
#     b_inner_id = b_inner.object_id
#     c_inner_id = c_inner.object_id
#     d_inner_id = d_inner.object_id

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)." # same object_id
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)." # same object_id
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)." # same object_id
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)." # same object_id
#     puts
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." # should be different object_id as what was in the block since it's referencing the outer id from outside the block
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block." # should be different object_id as what was in the block
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block." # should be different object_id as what was in the block
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block." # should be different object_id as what was in the block
#   # these were wrong because the inner reassignments pointed to the same object_id as the outer ones once reassigned

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # should be the same object_id as what was in the block
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # should be the same object_id as what was in the block
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # should be the same object_id as what was in the block
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # should be the same object_id as what was in the block
#   # these were also wrong but that's because you cannot access a local variable outside of its scope
# end 

# fun_with_ids

# Question 2 - Let's look at object id's again from the perspective of a method call instead of a block. Predict how the values and object ids will change throughout the flow of the code below:

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # distinct object_id
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # distinct object_id
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # distinct object_id
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # same object_id as a_outer
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." # same as the original outer before the method call because only reassignment in the method and not mutation
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." # same as the original outer before the method call
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call." # same as the original outer before the method call
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call." # same as the original outer before the method call
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # local variable error as a_inner was initialized within the method
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # local variable error as a_inner was initialized within the method
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # local variable error as a_inner was initialized within the method
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # local variable error as a_inner was initialized within the method
  puts
end

def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." # same object_id as a_outer outside/before the method call; important to note that these are not the same variables as those outside but Ruby is simply re-using the objects
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method." # same object_id outside/before the method call
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method." # same object_id outside/before the method call
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method." # same object_id outside/before the method call
  puts

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # different object_id as the value referenced is now different
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # different object_id as the value referenced is now different
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # different object_id as the value referenced is now different
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # different object_id as the value referenced is now different
  puts

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." # same object_id as a_outer because of the reassignment
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)." # same object_id as b_outer because of the reassignment
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)." # same object_id as c_outer because of the reassignment
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)." # same object_id as d_outer because of the reassignment
  puts
end

fun_with_ids

# Question 3 - Let's call a method, and pass both a string and an array as parameters and see how even though they are treated in the same way by Ruby, the results can be different.
# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # this should still be just 'pumpkins' since a_string_param was only reassigned in the method
puts "My array looks like this now: #{my_array}" # this should be displayed as ['pumpkins', 'rutabaga'] because the array was mtuated in the method call

# Question 4 - To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # should be 'pumpkinsrutabaga'
puts "My array looks like this now: #{my_array}" # should be '['pumpkins']

# Question 5 - Depending on a method to modify its arguments can be tricky:

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

# How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?

def tricky_method(a_string_param, an_array_param)
  a_string_param << ", rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}" # this solution would do it however it does not create consistency, instead we should return the values at the end of the method and reassign them

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6 - How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

puts color_valid('green')

 #  Ruby will automatically evaluate statements

 def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid('green')