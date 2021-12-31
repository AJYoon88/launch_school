arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


# def check_even(arr)
#   arr.flatten.each {|e| return false if e.odd?}
#   true
# end

# all_even = []

# arr.each do |hsh|
#   values = hsh.values
#   all_even << hsh if check_even(values)
# end

# p all_even

new_arr = arr.select do |hsh|
  hsh.all? do |_,v|
    v.all? do |num|
      num.even?
    end
  end
end

p new_arr

