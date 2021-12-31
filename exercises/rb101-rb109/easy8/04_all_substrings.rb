def leading_substrings(str)
  substring = ''
  str.chars.each_with_object([]) { |char, arr| arr << substring += char }
end

def substrings(str)
  (0...str.size).each_with_object([]) { |idx, arr| arr << leading_substrings(str[idx..-1]) }.flatten 
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]