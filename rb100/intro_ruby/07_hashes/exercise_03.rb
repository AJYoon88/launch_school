hash = {:name=>"Bob", :age=>30, :sex=>"male", :hobby=>"soccer", :fav_icecream=>"vanilla"}

p hash
puts
hash.each_key {|k| puts k}
puts
hash.each_value{|v| puts v}
puts
hash.each {|k,v| puts "For the key '#{k}', the value is #{v}"}

