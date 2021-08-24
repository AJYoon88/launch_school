puts "Enter the length of the room in meters"
length_metric = gets.chomp.to_f
puts

puts "Enter the width of the room in meters"
width_metric = gets.chomp.to_f
puts

area_sqm = length_metric * width_metric

area_sqft = area_sqm * 10.7639

puts "The area of the room is #{area_sqm.round(1)} square meters (#{area_sqft.round(2)} square feet)."