# Localyze-Coding-Challenge
Localyze Coding Challenge

#### Ruby 2.4.6

#### Steps to run the scripts
```
git clone git@github.com:jyothu/Localyze-Coding-Challenge.git
cd Localyze-Coding-Challenge
bundle install
```

###### Problem 1:- Given a word, write an algorithm that returns the sequence of a specific character that appears the most in sequence. If there are many of them, return the first character.
#

```
pry
require_relative 'last_word_length'
last_word_length('Your Word here')
```
###### Problem 2:- Given a set of numbers, find the subset in which the sum of the elements is the maximum sum.
#
```
pry
require_relative 'max_subarray_sum'
max_subarray_sum(input array here)
```

###### Problem 3:- Given a string s consists of some words separated by some number of spaces, return the length of the last word in the string. A word is a maximal substring consisting of non-space characters only.
#

```
pry
require_relative 'most_sequence_chars'
most_sequence_chars('Your Word hereeee')
```
- Or simply edit the file Eg.:- `last_word_length.rb `
- Add `p last_word_length('Your Word here')` on the bottom
- run `ruby last_word_length.rb` on the terminal

#### To run specs

```
rspec spec -f documentation
```