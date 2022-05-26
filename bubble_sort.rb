def bubble_sort(unsorted_array)

  sorted_array = []
  
  unsorted_array.each_index {|index| sorted_array = bubble_sort_switch(unsorted_array)}

  puts "#{sorted_array}"

end

def bubble_sort_switch(array)

  array.each_index do |index| 

    unless array[index + 1] == nil

      if array[index] > array[index + 1] 
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp

      else
        next
      end

    end

  end

  return array

end

def copy_method ()


bubble_sort([4,3,78,2,0,2]) #[0,2,2,3,4,78]
