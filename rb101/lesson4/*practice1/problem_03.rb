def test
  [1, 2, 3].reject do |num|
    puts num
  end
end

p test