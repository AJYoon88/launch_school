=begin
# Problem
- input : numeric string of an integer.
- output: integer

# Examples
- '4321' == 4321

# Datatype
- hash { key-string digit => value-integer digit }

# Algorithm
- initialize an empty array named 'integer_arr'
- iterate individual characters in the numeric string.
- match each character to the hash keys and get the matching integer value.
- Add the retrieved integer value to the 'integer_arr'
- once the string iteration is done, reverse the final 'integer_arr'.
- iterate the integer_arr with index. 
- return the sum of each elements multiplied by 10 to the power of its index number. 
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

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570