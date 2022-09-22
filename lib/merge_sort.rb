def merge_sort(array)
  return array if array.length < 2

  half = array.length / 2
  half_a = merge_sort(array[0...half])
  half_b = merge_sort(array[half..array.length])

  sorted = []

  until half_a.empty? || half_b.empty?
    if half_a[0] <= half_b[0]
      sorted << half_a.shift
    else 
      sorted << half_b.shift
    end
  end
  sorted + half_a + half_b
end


p merge_sort([1, 3, 7, 774, 4, 9, 3, 2, 0])