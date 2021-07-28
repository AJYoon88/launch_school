def factorial(num)
  num.downto(1).inject { |acc, n| acc * n }
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)

