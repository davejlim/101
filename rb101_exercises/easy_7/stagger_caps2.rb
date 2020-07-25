# RB101-109 - Small Problems - Easy 7 - Staggered Caps (Part 2)
#
# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.
#
# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Split the passed in string into an array
# Create a toggle for whether or not you will need to upcase
# Iterate through the array
# If the toggle is on, uppercase
# If the toggle is off, downcase
# If the character is alphabetic, change the toggle
# Join the array

def staggered_case(string)
  result = ''
  need_uppercase = true

  string.split('').each do |char|
    if need_uppercase
      result += char.upcase
    else
      result += char.downcase
    end

    need_uppercase = !need_uppercase if char =~ /[a-zA-z]/
  end

  result
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS')
p staggered_case('ignore 77 the 444 numbers')
p
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
