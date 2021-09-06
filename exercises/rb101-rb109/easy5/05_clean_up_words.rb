=begin
# PRoblem
- input: str containing alphabets and non-alphabetic characters.
- output: str containing alphabets and spaces. 

- requirement: 
    - Replace non-alphabetic characters with spaces. 
    - No consecutive spaces. 
    
# Examples
cleanup("---what's my +*& line?") == ' what s my line '

# Data Structure
- string

# algo

- set constant with alphabetic characters
- initizlize a new variable with a new empty str
- iterate through each characters in the input str. 
- add the iterated characters to the new str if they are alphabet. 
- if not, add an empty space only if the last character of the new str doesn't end with a space. 
- return the new string. 

=end

ALPHABETS = ('a'..'z').to_a

def cleanup(str)
  clean_str = ""
  
  str.each_char do |char|
    if ALPHABETS.include?(char)
      clean_str << char
    else
      clean_str << " " if clean_str[-1] != " "
    end
  end
  
  clean_str
end
  
p cleanup("---what's my +*& line?") #== ' what s my line '