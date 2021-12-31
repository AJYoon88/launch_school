def interleave(arr1, arr2)
  # joint_arr = []
  # arr1.each_with_index do |e, ind|
  #   joint_arr << e
  #   joint_arr << arr2[ind]
  # end
  # joint_arr
  
  arr1.zip(arr2).flatten
end



p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']