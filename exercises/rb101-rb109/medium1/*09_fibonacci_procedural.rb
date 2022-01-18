def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# def fibonacci(num)
#   return 1 if num <= 2
#   previous_nums = [1, 1]
#   3.upto(num) do
#     sum = previous_nums[0] + previous_nums[1]
#     previous_nums[0] = previous_nums[1]
#     previous_nums[1] = sum
#   end
  
#   previous_nums[1]
# end

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501