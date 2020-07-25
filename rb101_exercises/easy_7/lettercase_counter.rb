# RB101-109 - Small Problems - Easy 7 - Lettercase Counter
#
# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

require 'pry'

LOWERCASE = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPERCASE = LOWERCASE.map { |letter| letter.upcase }

def letter_case_count(string)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.split('').each do |char|
    if LOWERCASE.include?(char)
      case_hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end

  case_hash
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
