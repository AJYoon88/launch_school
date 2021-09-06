=begin

# Problem
- input: string
- output: sum of the ASCII values of every character in the string. 

# Examples 
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Datatypes
- array to store ASCII values of all str character. 

# Algo
- initizlize an empty array
- iterate through each characters, find the ASCII value using String#ord, store the value in arr
- add all values in the array. Array#sum

=end

def ascii_value(str)
  values = []
  
  str.each_char { |char| values << char.ord }
  
  values.sum
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0