# My method seems less effficient.

# def sum_square_difference(n)
#   sum = (1..n).to_a.sum
#   sum_of_squares = (1..n).reduce(0) { |acc, num| acc + num ** 2 }
#   sum **2 - sum_of_squares
# end

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150