# def digit_list(num)
#   digits = num.to_s.split("")
#   digits.map! {|d| d.to_i}
#   digits
# end

# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

def digit_list(num)
  digits = []
  
  loop do
    quotient, remainder = num.divmod(10)
    digits.unshift(remainder)
    num = quotient
    break if num == 0
  end

end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true