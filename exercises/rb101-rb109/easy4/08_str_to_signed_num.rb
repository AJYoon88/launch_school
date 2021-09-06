=begin
#Problem
- input: number strin with or without sign
- output: positive or negative integer value

#Example

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

#Datatype

hash containing str => int pairs.

#Algorithm
- check if the string contains + or - sign. 
- if yes, determine whether is + or -. 
- Separate the sign from the number str.
- convert the number str to an integer value, using a separate method. 
- multiply -1 to the integer value if the input str contained - sign. 
- return the final integer value. 

=end

def string_to_integer(str)
  digits = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0 }
  integer_arr = []
  
  str.each_char { |char| integer_arr << digits[char] }
  
  integer_arr.reverse!
  
  integer_value = 0
  integer_arr.each_with_index { |ele, ind| integer_value += (ele * (10 ** ind)) }
  
  integer_value
end

def string_to_signed_integer(str)
  value = nil
  
  if str[0] == '-' || str[0] == '+'
    value = string_to_integer(str[1..-1])
    value *= -1 if str[0] == '-'

  else
    value = string_to_integer(str)

  end
  
  value
  
end

p string_to_signed_integer('4321') # == 4321
p string_to_signed_integer('-570') # == -570
p string_to_signed_integer('+100') # == 100