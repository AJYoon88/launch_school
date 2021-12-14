#sort the following in decensing numeric order. 

arr = ['10', '11', '9', '7', '8']

arr.sort! { |a,b| b.to_i <=> a.to_i }

# arr.map! { |e| e.to_i }
# arr.sort!.reverse!.map! {|e| e.to_s }

p arr
  