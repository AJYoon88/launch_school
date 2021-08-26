def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # "pupkinsrutabaga" because << operator actually mutates the caller object, which the my_string variable outside of the method is still pointing to. 

puts "My array looks like this now: #{my_array}" # ["pupkins"] within the method, the an_array_param is simply reassigned to a new array with different object_id. The my_array variable outside the method still points to the same ["pumpkin"] array.