def self.bubble_sort(container)
    loop do
      swapped = false
      (container.size-1).times do |i|
        if (container[i] <=> container[i+1]) == 1
          container[i], container[i+1] = container[i+1], container[i] # Swap
          swapped = true
        end
      end
      break unless swapped
    end
    container
  end



def bublesort(array)
    loop do
      swapped = false
      (array.size-1).times do |i|
        if (array[i] <=> array[i+1]) == 1
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
      end
    end
    break unless swapped
  end
  array
end
