hash = {:name=>"Bob", :age=>30, :sex=>"male", :hobby=>"soccer", :fav_icecream=>"vanilla"}
p hash
puts
puts "Does the hash above has a value 'bob'?"
p hash.value?("Bob")
puts
puts "Does the hash above has a value 'female'?"
p hash.value?("female")