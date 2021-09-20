# Given a string s consists of some words separated by some number of spaces,
# return the length of the last # word in the string.
# A word is a maximal substring consisting of non-space characters only.
#
# Example 1
# Given the input s = "Hello World" the output is 5
#
# Example 2
# Given the input s = " fly me   to   the moon  " the output is 4
#
# Example 3
# Given the input s = "luffy is still joyboy" the output is 6
#
# Constraints
# 1 <= s.length <= 104
# s consists of only English letters and spaces ' '.
# There will be at least one word in s.

MAX_STRING_LENGTH = 104

def last_word_length(string)
  raise 'Invalid argument!' if string.nil?

  if string.empty? || !string.match?(/^[[:alpha:][:blank:]]+$/) || string.length > MAX_STRING_LENGTH
    raise 'Invalid String!'
  end

  string.split.last.length
end
