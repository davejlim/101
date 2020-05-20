# RB101 - Lesson 4 Ruby Collections - Practice Problems: Methods and More Methods

# Question 1 - What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The return value the select method would be 'hi' since that is the string that the block returns.
# This was incorrect because select performs selection based on the truthiness of the block's return value. 
# 'hi' would be truthy and therefore select will return a new array containing all of the elemetns in the original array rather than the conditional on line 6.

# Question 2 - How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# It should return 1 because only caterpillar is greater than 4. For count, if a block is given, it counts the number of elements for which the block returns a true value which is only caterpillar.

# Question 3 - What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The return value of reject is [1, 2, 3] because reject returns a new array containing the items in self if the given block is not true. puts num would return nil for each element in the colleciton.

# Question 4 - What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The return value in the following code shoudl be { 'ant': 'cat' }. Because each_with_object iterates through the array and reassigns 'ant' as the key to three different values for the hash that is passed through.
# My response was incorrect because I thought that value[0] would only pass in 'ant' but instead since it iterates through each element, it would actually pull in the first character of each string of each element.
# The return value would actually be { 'a': 'ant', 'b': 'bear', 'c': 'cat '}

# Question 5 - What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# According to Ruby docs, #shift would remove a key-value pair and return it as the two-item array
# If so the return value would be ['a', 'ant']

# Question 6 - What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# The return value would be 2 because the #pop method would take place first removing caterpillar as the last element. #size would then return the number of elements in self.
# This was incorrect. Instead, beacuse pop returns the last element, it would return caterpillar which is what size is then being called on. #size is then evaluating the return value of pop which is 'caterpillar'.
# The final return value is 11.

# Question 7 - What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value is true because num.odd? is the last expression and it evaluates to true.
# any? then also returns true because it looks at the truthiness of the block's return value. 
# One thing that wasn't captured in my response is that any? will only iterate once because there was no point in evaluating the remaining items in the array. Therefore, puts num is only ever invoked once and
# will only display 1.

# Question 8 - How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Take will return the first n elements based on what is passed in. It is not destructive as it returns a new array. It should return [1, 2]

# Question 9 - What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# [false, bear]
# The correct response would be [nil, bear] the return value of map is always an array. Because the first iteration of map evalutes to false, a value isn't returned and should be nil.
# It is important to note that when none of the conditions in an if statment evalutes to true, the if statement itself returns nil.

# Question 10 - What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil] because the first iteration would evaluate as truthy and would transform to that value but the second two iterations would have puts num as the last expression and evaluate to nil.