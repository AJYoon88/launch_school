HEX_DIGITS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

uuid = "#{HEX_DIGITS.sample(8).join}-#{HEX_DIGITS.sample(4).join}-#{HEX_DIGITS.sample(4).join}-#{HEX_DIGITS.sample(4).join}-#{HEX_DIGITS.sample(12).join}"

p uuid

def uuid_generator
  characters = []
  (0..9).each {|digit| characters << digit.to_s}
  ('a'..'f').each {|digit| characters << digit}
  
  uuid = ""
  sections = [8, 4, 4, 4, 12]
  
  sections.each_with_index do |section, index|
    uuid << characters.sample(section).join
    return uuid if index == sections.size - 1
    uuid << "-"
  end
end