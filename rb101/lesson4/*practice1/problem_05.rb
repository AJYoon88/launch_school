hash = { a: 'ant', b: 'bear' }
p hash.shift
p hash
# returns [:a, 'ant']
# hash becomes { :b => 'bear' }