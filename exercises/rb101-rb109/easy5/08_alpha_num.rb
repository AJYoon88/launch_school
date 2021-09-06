=begin
# Problem
- input: array of integers between 0 and 19
- output: array of those integers sorted based on the English words for each nums. 

# Examples 
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Data type
- hash
- array

# algo
- set up a hash that shows all integer => English word pairs. 
- iterate through the input array, convert each integer into word and map it into the array.
- sort the array. 
- iterate the new array, convert English words back to integer. 
- return the final array. 

=end

INTEGER = (0..19).to_a
WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

# INTEGER_TO_WORDS = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}

# def alphabetic_number_sort(arr)
#   arr.map! { |int| INTEGER_TO_WORDS[int] }
#   arr.sort!.map! { |word| INTEGER_TO_WORDS.key(word) }
# end

def alphabetic_number_sort(arr) # this works because the numbers in the array will work as incides to pull correct words from the WORDS array. 
  arr.sort_by { |num| WORDS[num] }
end


p alphabetic_number_sort((0..19).to_a) #== [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]