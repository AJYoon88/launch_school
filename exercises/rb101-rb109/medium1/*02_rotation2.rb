def rotate_rightmost_digits(num, n)
  digits = num.to_s.chars
  digit_moved = digits.delete_at(-n) #note how the destructive instance method Array#delete_at returns the deleted element.
  digits << digit_moved
  digits.join.to_i
end

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917