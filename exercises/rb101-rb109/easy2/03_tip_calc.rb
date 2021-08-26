print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_per = gets.chomp.to_f

tip = bill * (tip_per / 100)
total = bill * (1 + tip_per / 100)

puts

puts "The tip is $#{format("%#.2f", tip)}"
puts "The total is $#{format("%#.2f", total)}"