def test(arr)
  arr.count do |str|
   str.length > 3
  end
end

p test(['ant', 'bat', 'caterpillar'])