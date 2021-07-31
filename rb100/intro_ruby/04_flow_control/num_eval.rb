def num_between(num)
  if num >= 0 && num <= 50
    puts "#{num} is between 0 and 50."
  elsif num >= 51 && num <= 100
    puts "#{num} is between 51 and 100."
  elsif num > 100
    puts "#{num} is above 100."
  else
    puts "#{num} is a negative number."
  end
end

puts "Enter your number"
input = gets.chomp.to_i

num_between(input)
