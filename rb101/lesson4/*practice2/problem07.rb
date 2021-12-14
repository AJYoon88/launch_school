statement = "The Flintstones Rock"

hsh = Hash.new(0)

statement.gsub(/ /, "").each_char { |char| hsh[char] += 1 }

p hsh