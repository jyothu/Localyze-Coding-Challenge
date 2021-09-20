# Given a word, write an algorithm that returns the sequence of a
# specific character that appears the most in sequence.
# If there are many of them, return the first character.

# Examples

# Given the input "Pressuuuuuure" the output is "uuuuuu"
# Given the input "Boat" the output is "B"
# Given the input "A hot  dog" the output is "  " (2 spaces!)

def most_sequence_chars(string)
  max_char = string[0]
  max_count = 1
  current_count = 1

  string.each_char.with_index do |char, index|
    if char != string[index + 1]
      current_count = 1
      next
    end

    current_count += 1
    max_char = char

    if current_count > max_count
      max_count = current_count
    end
  end

  max_char * max_count
end

