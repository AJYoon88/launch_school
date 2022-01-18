def bubble_sort!(array)
  search_size = array.size - 1
  loop do
    sorted = true
    count = 0
    while count < search_size
      if array[count] > array[count + 1]
        array[count], array[count + 1] = array[count + 1], array[count]
        count += 1
        sorted = false
      else
        count += 1
      end
    end
    
    break if sorted == true
    search_size -= 1
  end

  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)