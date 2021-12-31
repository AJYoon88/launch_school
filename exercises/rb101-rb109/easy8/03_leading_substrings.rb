def leading_substrings(str)
  substring = ''
  str.chars.each_with_object([]) { |char, arr| arr << substring += char }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']