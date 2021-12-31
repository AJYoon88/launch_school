def swapcase(str)
  str.split('').map do |char|
    char =~ /[A-Z]/ ? char.downcase : char.upcase
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'