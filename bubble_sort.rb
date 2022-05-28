def bubble_sort(unsorted_array)
  sorted_array = []
  unsorted_array.each_index { sorted_array = bubble_sort_helper(unsorted_array) }

  puts sorted_array.to_s
end

def bubble_sort_helper(array)
  array.each_index { |index| variable_switch(array, index) if swap_needed?(array, index) }
end

def swap_needed?(array, index)
  array[index + 1].nil ? false : array[index] > array[index + 1]
end

def variable_switch(array, index)
  array[index], array[index + 1] = array[index + 1], array[index]
end
