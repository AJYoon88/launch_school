movies = { movie1: 1975, movie2: 2004, movie3: 2013, movie4: 2001, movie5: 1981}

years = []

movies.each_value { |v| years << v}

puts years
