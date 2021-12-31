# def halvsies(arr)
#   return_arr = [[],[]]
#   arr.each_with_index do |n, i|
#     if arr.size.odd?
#       i <= arr.size/2 ? return_arr[0] << n : return_arr[1] << n
#     else
#       i <= arr.size/2 - 1 ? return_arr[0] << n : return_arr[1] << n
#     end
#   end
#   return_arr
# end


def halvsies(arr)
  half_point = (arr.size/2.0).ceil
  first_half = arr.slice(0, half_point)
  second_half = arr.slice(half_point, arr.size - half_point)
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]