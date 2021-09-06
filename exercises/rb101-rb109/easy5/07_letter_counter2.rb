=begin
# Problem
- input: str of words
- output: hash showing the number of words of different sizes

- requirement
  - for empty string, return emtpy hash
  - count only alphabet characters for word size.  
  
# Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# Data structure
- hash

# Algo
- initialize an empty hash with the default value of 0. 
- split the input str.
- iterate through each word. 
- remove non-alphabet characters. 
- get the word size and update the count in the hash. 
- return the hash. 

=end

def word_sizes(str)
  counts = Hash.new(0)
  
  str.split.each do |word| 
    word.gsub!(/[^a-zA-Z]/, "")
    counts[word.size] += 1
  end
  
  counts
  
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}