#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 7

require 'pry'

# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

p arr[0] += 2 # 4
p arr
p arr[1][0] -= a # 3
p arr
p b

# It is important to note that a doesn't change because we were never referncing a at any point. arr[0] += 2 was modifying the array and not a. 
# We are assigning a new object at that index of the array so instead of arr[0] containing a it now contains 4.

# The value of b does change however because we modify the array that b is pointing to by assigning a new value at index 0 of that array.