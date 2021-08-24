def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
int = gets.chomp.to_i

prompt("Enter's' to compute the sum, 'p' to compute the product.")
compute_choice = gets.chomp

if compute_choice == 's'
  sum = (1..int).inject { |sum, num| sum + num }
  puts "The sum of the integers between 1 and #{int} is #{sum}."
elsif compute_choice == 'p'
  product = (1..int).inject { |prod, num| prod * num }
  puts "The product of the integers between 1 and #{int} is #{product}."
end

