puts "---original---"
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2
p array1
# It will print Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, and Zeppo in seperate lines. <<- wrong!
# The array2 gets copies of references that point to the same string objects in array1.
# Therefore, when the string objects in array1 are directly mutated, the array2 will be also affected.  

puts

puts "---bypass1---" 
# one way to bypass the problem above. 
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each_with_index { |value, ind| array1[ind] = value.upcase if value.start_with?('C', 'S') }
p array2
p array1


puts
puts "---bypass2---" 
# another way
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.map! { |value| if value.start_with?('C', 'S') then value.upcase else value end }
p array2
p array1


puts
puts "---bypass3---" 
# found this on the Stack Overflow. I prefer this for the simplicity. Object#dup method creates a new instance duplicate. 
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.dup }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2
p array1