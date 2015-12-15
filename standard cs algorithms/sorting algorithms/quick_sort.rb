 # Quicksort: A divide-and-conquer sort that recursively partitions a container until it is sorted.
  # Requirements: Container should implement #pop and include the Enumerable module.
  # Time Complexity: О(n log n) average, O(n^2) worst-case
  # Space Complexity: О(n) auxiliary
  # Stable: No
  # 
  #   Algorithms::Sort.quicksort [5, 4, 3, 1, 2] => [1, 2, 3, 4, 5]
  # def self.quicksort(container)
  #   return [] if container.empty?
  #   
  #   x, *xs = container
  # 
  #   quicksort(xs.select { |i| i <  x }) + [x] + quicksort(xs.select { |i| i >= x })
  # end
  
  def self.partition(data, left, right)
    pivot = data[front]
    left += 1

    while left <= right do
      if data[frontUnknown] < pivot
        back += 1
        data[frontUnknown], data[back] = data[back], data[frontUnknown] # Swap
      end

      frontUnknown += 1
    end

    data[front], data[back] = data[back], data[front] # Swap
    back
  end


  # def self.quicksort(container, left = 0, right = container.size - 1)
  #   if left < right 
  #     middle = partition(container, left, right)
  #     quicksort(container, left, middle - 1)
  #     quicksort(container, middle + 1, right)
  #   end
  # end
  
  def self.quicksort(container)
    bottom, top = [], []
    top[0] = 0
    bottom[0] = container.size
    i = 0
    while i >= 0 do
      l = top[i]
      r = bottom[i] - 1;
      if l < r
        pivot = container[l]
        while l < r do
          r -= 1 while (container[r] >= pivot  && l < r)
          if (l < r)
            container[l] = container[r]
            l += 1
          end
          l += 1 while (container[l] <= pivot  && l < r)
          if (l < r)
            container[r] = container[l]
            r -= 1
          end
        end
        container[l] = pivot
        top[i+1] = l + 1
        bottom[i+1] = bottom[i]
        bottom[i] = l
        i += 1
      else
        i -= 1
      end
    end
    container    
  end