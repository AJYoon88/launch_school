# print "Enter a noun: "
# noun = gets.chomp
# print "Enter a verb: "
# verb = gets.chomp
# print "Enter an adjective: "
# adj = gets.chomp
# print "Enter an adverb: "
# adv = gets.chomp

# puts "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"


story = {noun: nil, verb: nil, adjective: nil, adverb: nil}

story.keys.each do |part|
  case part
  when :noun, :verb  #in case when statement a , (comma) does the same job as || in the if statement. || can't be used. 
    print "Enter a #{part}: "
    story[part] = gets.chomp
  when :adjective, :adverb
    print "Enter an #{part}: "
    story[part] = gets.chomp
  end
end
p story
puts
puts format("Do you %<verb>s your %<adjective>s %<noun>s %<adverb>s? That's hilarious!", story) # %<key>s - don't forget s after closing the angled bracket. 
  

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!