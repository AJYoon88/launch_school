a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
new_a = a.map {|str| str.split(" ")}

new_a.flatten!

p new_a