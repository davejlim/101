# RB109 Written Assessment Practice
#
# You are given an array strarr of strings and an integer k. Your task is to
# return the first longest string consisting of k consecutive strings taken in
# the array.

# Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas",
# "theta", "abigail"], 2) --> "abigailtheta"

# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

# Input: Array, Integer (for k - how many consecutive strings)
# Output: String
# Data Structure:
#
# Rules:
# Explicit - return a string of consecutive strings with the greatest length
# - If the passed integer k is greater than the array length, return ''
# - If the passed integer k is 0, return ''
#
# Approach:
# Initialize new array
# Initialize counter variable
# Create a loop
# Iterate through the passed in array
# Take the greatest lenght str and put in a new array
# Increment counter
# When counter == passed in k, break loop
# Join the new array

def longest_consec(strarr, k)
  new_arr = []
  counter = 0
  index = 0

  loop do
    new_arr << strarr.max
    index += 1
    counter +=1
    break if index >= strarr.size
  end

  new_arr
end

p longest_consec(["a", "ab", "abc", "d", "ee", "abcde", "bbb"], 6)
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
p longest_consec([], 3) == ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""
p longest_consec(["a", "ab", "abc", "d", "ee", "abcde", "bbb"], 6) == "ababcdeeabcdebbb"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
p longest_consec([], 3) == ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""
