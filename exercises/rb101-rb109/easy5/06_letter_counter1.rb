=begin
# Problem
- input: str of words
- output: hash showing the number of words of different sizes

- requirement
  - for empty string, return emtpy hash
  - count all non-space str characters. 
  
# Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Data structure

- hash

# Algo
- initialize an empty hash with the default value of 0. 
- split the input str.
- iterate through each word. 
- get word size and update the count in the hash. 
- return the hash. 

=end

def word_sizes(str)
  counts = Hash.new(0)
  
  str.split.each { |word| counts[word.size] += 1 }
  
  counts
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}

