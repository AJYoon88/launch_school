=begin
# Problem
- input : str with consecutive duplicate characters
- output : str with duplicate characters removed

- requirement
  - do not use String#squeeze or String#squeeze!
  - return a new string

# Examples
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Data Structure
- string

# algo
- initialize a new variable with empty str.
- iterate each character in str.
  - if the character is different from the last character of the new str, append it to the new str
  - else move on to the next character of the input str. 
  
- return the new str. 

=end

def crunch(str)
  clean_str = ""
  
  str.each_char { |char| clean_str << char if char != clean_str[-1] }
  
  clean_str
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''


# Try writing a method that uses Regular Expression!
