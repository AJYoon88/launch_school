def has_lab?(word)
  if word =~ /lab/
    word
  else
    "no match"
  end
end

puts has_lab?("laboratory")

puts has_lab?("experiment")

puts has_lab?("Pans Labyrinth")

puts has_lab?("elaborate")

puts has_lab?("polar bear")
