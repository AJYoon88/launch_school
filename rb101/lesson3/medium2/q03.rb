def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # will display "pupkins" because reassigning within the method does not mutate the caller object. 

puts "My array looks like this now: #{my_array}" # will display ["pupkins", "rutabaga"] because the operator << mutates the caller array. 