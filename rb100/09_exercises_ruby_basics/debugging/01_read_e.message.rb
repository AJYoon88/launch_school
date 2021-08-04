def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0) # causes ArgumentError. As written, the method can only take one argument value. 
find_first_nonzero_among(1) # causes NoMethod error. An integer cannot be enumerated 

