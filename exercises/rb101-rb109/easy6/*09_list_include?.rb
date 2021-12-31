# def include?(arr, n)
#   arr.each { |e| return true if e == n }
#   false
# end

def include?(arr, n)
  !!arr.find_index(n)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false