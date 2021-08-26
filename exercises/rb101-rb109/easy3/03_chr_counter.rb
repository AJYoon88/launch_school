print "Please write word or multiple words: "
input = gets.chomp

puts

# chr_count = input.split.join('').length
chr_count = input.delete(' ').length

puts "There are #{chr_count} characters in \"#{input}\"."