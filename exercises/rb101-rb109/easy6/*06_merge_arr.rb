# def merge(arr1, arr2)
#   merged_arr = arr1 + arr2
#   merged_arr.uniq!
# end

def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]