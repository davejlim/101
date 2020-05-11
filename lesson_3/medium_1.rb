require 'pry'

# RB101 Lesson 3 Practice Problems Medium 1

# Question 1 - For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times { |number| puts (' ' * number) + 'The Flintstones Rock!' }

# Question 2 - The result of the following statement will be an error. Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Solution - this will raise and error because (40+2) results in an integer while it is being concatenated to a string

# Question 3 - Write a method that handles 0 or negative numbers.

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(10)

def new_factors(number)
  divisor = number
  factors = []
  loop do
    if number % divisor == 0
      factors << number / divisor
    else
      return
    end
    divisor -= 1
  end
  factors
end

p new_factors(10)

# Solution

# while divisor > 0 do
#   factors << number / divisor if number &% divisor == 0
#   divisor -= 1
# end

# Bonus 1 - The purpose of number % divisor == 0 is to ensure that you are appending actual factors of the number
# Bonus 2 - The second to last line of factors is to ensure that you return the factors value when calling the method

# Question 4 - Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the 
# oldest elements in the buffer. She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Yes, << would be modifying the existing object. The second verison using + would be creating a new object and having buffer being redirected to it.

# Question 5 - Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.
# What's wrong with the code?

# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# limit is being intialized outside of the method definition and is therefore out of scope. It needs to be initialized inside the method.

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The ideal solution would be having limit be an additional argument and passing it in when you call fib.

# Question 6 - What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# I would expect the output to be 34 because we are not modifying answer with the method call but rather we are assigning a new variable to it. The existing answer would
# still be 42 which - 8 would then be 34.

# Question 7 - Did the family's data get ransacked? Why or why not?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# def mess_with_demographics(hash)
#   demo_hash = hash
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# p mess_with_demographics(munsters)
# p munsters

# No, the family's data did not get ransacked, because #values method creates a new array populated with the values. The existing data dmeographics should still be retrievable from munsters.

# My solution was incorrect! Ruby passes the object id of each item rather than the value of the parameter. The method internally stores these object ids in locally scoped variables.
# demo_hash starts off pointing to the munsters hash. The program does not reassign demo_hash it just uses it as_is. 

# https://launchschool.com/posts/4a62e769 - For the Hash class method, a [] on a Hash mutates the hash.

# Question 8 - 

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# The result should be 'paper'.

# Question 9 - Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo)

# It should be 'no' since the value returned from the foo method is always 'yes' which does not equal 'no'.