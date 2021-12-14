=begin
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# intput: a string
# output: array of plaindrome substrings

# rules: 
- explicit requirement
  - palindrom words are case sensitive. 
- implicit requirement
  - return all palindrome substrings including substrings that are part of the larger palindrome substrings.
  - if the input string is emtpy, return an empty array. 
  - if there's no palindrom substring, return an empty array. 
# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=end