number = 5948

thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 1000 % 100 / 10
ones = number % 1000 % 100 % 10

puts "The number is #{number}."
puts "The digit in the thousands place is #{thousands}"
puts "The digit in the hundreds place is #{hundreds}"
puts "The digit in the tens place is #{tens}."
puts "The didigt in the ones place is #{ones}."
