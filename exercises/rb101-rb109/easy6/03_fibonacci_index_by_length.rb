def find_fibonacci_index_by_length(len)
  count = 2
  prev_fib_num = 0
  current_fib_num = 1
  while true
    new_fib_num = prev_fib_num + current_fib_num
    prev_fib_num = current_fib_num
    current_fib_num = new_fib_num
    break if new_fib_num.to_s.length == len
    count += 1
  end
  count
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847