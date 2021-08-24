def prompt(count)
  if count == 1
    puts "==> Enter the 1st number:"
  elsif count == 2
    puts "==> Enter the 2nd number:"
  elsif count == 3
    puts "==> Enter the 3rd number:"
  elsif count == 6
    puts "==> Enter the last number:"
  else
    puts "==> Enter the #{count}th number:"
  end
end

count = 1
arr = []
user_input = ''

loop do
  prompt(count)
  user_input = gets.chomp.to_i
  count += 1
  break if count == 7
  arr << user_input
end

if arr.include?(user_input)
  puts "The number #{user_input} appears in #{arr}."
else
  puts "The number #{user_input} does not appear in #{arr}."
end