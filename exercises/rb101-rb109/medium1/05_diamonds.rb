def diamond(num)
  arr = []
  (1..num).each do |n|
    if n == 1
      arr << ' ' * ((num-n)/2) + '*' + ' ' * ((num - n)/2)
    elsif n.odd?
      arr << ' ' * ((num-n)/2) + '*' + ' ' * (n - 2) + '*' + ' ' * ((num - n)/2)
    end
  end
  arr << arr[0..-2].reverse
  arr.each {|str| puts str}
end

diamond(17)