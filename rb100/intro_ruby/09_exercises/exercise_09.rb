h = {a:1, b:2, c:3, d:4}

p h
puts "The value of key 'b' is #{h[:b]}"
puts
h[:e] = 5
p h
puts

#h.select! {|k,v| v > 3.5}

h.delete_if {|k,v| v < 3.5}

p h