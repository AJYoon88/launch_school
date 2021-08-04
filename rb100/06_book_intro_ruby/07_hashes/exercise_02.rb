hash1 = {name: "Bob", age: 30, sex: "male"}
hash2 = {hobby: "soccer", fav_icecream: "vanilla"}

puts 
puts "Hash1 : #{hash1}"
puts "Hash2 : #{hash2}"
puts
puts "hash1 merged with hash2 using .merge"
p hash1.merge(hash2)
puts
puts "hash1 after .merge"
p hash1
puts
puts "hash1 merged with hash2 using .merge!"
p hash1.merge!(hash2)
puts
puts "hash1 after .merge! "
p hash1
puts

