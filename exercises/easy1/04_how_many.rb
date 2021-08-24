# def count_occurrences(arr)
#   counts = Hash.new(0)
  
#   i = 0
#   while i < arr.length
#     key = arr[i]
#     counts[key] += 1
#     i += 1
#   end
  
#   counts.each { |k,v| puts "#{k} => #{v}"}
# end
  
def count_occurrences(arr)
  counts = {}
  
  arr.uniq.each { |ele| counts[ele] = arr.count(ele) }
  
  counts.each { |k,v| puts "#{k} => #{v}" }
  
end
  



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

