=begin
# Problem
- input: str of words
- output: str in which the first and last letters of every words are swapped.

- assumptions:
  - every word contains at least one letter. 
  - all input string always contain at least one word. 
  - no special characters. only words and spaces. 
- requirement
  - swap the first and last character. 

# Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Data Structure
string and array

# Algo
- split the input str into words. Save them into a new array. 
- swap the first and last characters of each word in the array. 
- join the array with empty space as a spacer. 

=end

def swap(str)
  words = str.split
  
  # words.map! do |word| 
  #   if word.length > 1
  #     word = word[-1] + word[1..-2] + word[0]
  #   else
  #     word
  #   end
  # end
  
  words.map! do |word| 
    word[0], word[-1] = word[-1], word[0]
    word
  end

  words.join(" ")
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
