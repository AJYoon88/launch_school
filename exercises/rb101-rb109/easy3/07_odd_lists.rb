# #method 1
def oddities(arr)
  arr.select.with_index { |ele, ind| ele if ind.even? }
end

#method 2
def oddities(arr)
  odd_eles = []
  arr.each_with_index { |ele, ind| odd_eles << ele if ind.even? }
  odd_eles
end

p oddities([1,2,3,4])
p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) # []