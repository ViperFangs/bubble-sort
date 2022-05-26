def bubble_sort(unsorted_array)

  sorted_array = []
  
  unsorted_array.each_index do |number|

    pass = 0

    unsorted_array.each_index do |index|

      unless unsorted_array[index + 1] == nil

        if unsorted_array[index] > unsorted_array[index + 1] 
          bubble_sort_switch(unsorted_array, index)
          pass = 1
        else
          next
        end

      end

      break if pass == 0

    end

  end

  puts "#{unsorted_array}"

end

def bubble_sort_switch(array, index)

  temp = array[index]
  array[index] = array[index + 1]
  array[index + 1] = temp

  return array

end


bubble_sort([4,3,78,2,0,2]) #[0,2,2,3,4,78]
