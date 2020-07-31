# RB101-109 - Small Problems - Easy 8 - Madlibs
#
# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

# Input: Get strings from user
# Output: String
# Data Structure: Hash

def user_answers
  answers_hash = { noun: '', verb: '', adjective: '', adverb: '' }

  get_user_response(answers_hash)
end

def get_user_response(hash)
  hash.each do | part_of_speech, response |
    puts "Enter a #{part_of_speech}:"
    hash[part_of_speech] = gets.chomp
  end
end

def madlib
  madlib_hash = user_answers

  puts "Do you #{madlib_hash[:verb]} your #{madlib_hash[:adjective]}
        #{madlib_hash[:noun]} #{madlib_hash[:adverb]}? That's hilarious!"
end

madlib
