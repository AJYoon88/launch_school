# def reverse(array)
#   temp_rev_array = []
#   array.each { |ele| temp_rev_array.unshift(ele) }
#   array.map.with_index { |_,ind| temp_rev_array[ind] }
# end

def reverse(ary)
  ary.each_with_object([]) { |ele, rev_array| rev_array.unshift(ele) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true