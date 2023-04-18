# Frequently Asked Questions
# FAQ

# Method signature:
# name: acronymize
# param(s) sentence String
# returns: acronym (String)

# Pseudo-code
# Split string into an array of words: split
# Iterate over each string to get first letter: map
# First letter: word[0]
def acronymize(word)
  # .map returns a new array
  first_letters = word.split.map {|word| word[0]}
  clean_string = first_letters.join.upcase
end

#Tests
puts "-- Test Results --"
puts acronymize("Frequently Asked Questions") == "FAQ"
puts acronymize("") == ""
puts acronymize("AWAY FROM KEYBOARD") == "AFK"
puts acronymize("working from home") == "WFH"
