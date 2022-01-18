def sequence(n)
  # (1..n).each_with_object([]) { |num, arr| arr << num } 
  n >= 1 ? (1..n).to_a : (n..1).to_a.reverse
end
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)