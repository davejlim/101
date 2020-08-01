# RB101-109 - Small Problems - Easy 8 - Palindromic Sunbstrings
#
# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.
#
# You may (and should) use the substrings method you wrote in the previous
# exercise.
#
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.
#
#

def substrings(str)
  all_sub = []
  counter = 0

  loop do
    break if str.size == 1

    if counter == 0
      all_sub << leading_substrings(str)
    else
      str.slice!(0)
      all_sub << leading_substrings(str)
    end

    counter += 1
  end

  all_sub.flatten
end


def leading_substrings(str)
  lead_arr = []
  substring = ''
  str.split('').each do |char|
    substring += char
    lead_arr << substring
  end

  lead_arr
end

def palindromes(str)
  substrings(str).select do |substr|
    substr.size > 1 && (substr == substr.reverse)
  end
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
      'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
        '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
