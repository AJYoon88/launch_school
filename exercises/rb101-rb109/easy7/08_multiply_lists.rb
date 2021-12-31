# def multiply_list(arr1, arr2)
#   product_arr = []
#   arr1.each_with_index { |e, ind| product_arr << e * arr2[ind] }
#   product_arr
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |subarr| subarr[0] * subarr[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

