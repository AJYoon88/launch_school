flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

idx = nil
flintstones.each_with_index { |name, i| idx = i if name.start_with?('Be')  }

p idx

# another way.
p flintstones.index { |name| name[0, 2] == "Be" }
