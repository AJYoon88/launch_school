arr = ["cat", "dog", "mouse", "fish", "cow", "dog"]

print arr
puts
arr.each_with_index { |entry, index| puts "The index of #{entry} is #{index}"}


