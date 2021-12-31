# def multiply_all_pairs(arr1, arr2)
#   products = []
#   arr1.each do |e1|
#     arr2.each { |e2| products << e1 * e2 }
#   end
#   products.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |subarr| subarr.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]