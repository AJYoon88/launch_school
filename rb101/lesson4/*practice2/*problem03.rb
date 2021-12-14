ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.keep_if {|_,age| age > 500}

p ages

# What's the difference between Hash#keep_if vs Hash#select! ?