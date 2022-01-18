def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(digits, n)
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits
end

def max_rotation(num)
  return num if num.to_s.size <= 1
  rotated_num = num.to_s.chars
  count = num.to_s.size
  loop do
    rotated_num = rotate_rightmost_digits(rotated_num, count)
    count -= 1
    break if count == 1
  end
  rotated_num.join.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(10051123123)