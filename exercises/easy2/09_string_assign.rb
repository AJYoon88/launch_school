name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# it happens because the caller was mutated by the method. 
# Because both variables are still pointing to the same mutated object, both variables will print "BOB".

