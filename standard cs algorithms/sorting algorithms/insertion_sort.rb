
  # Requirements: Needs to be able to compare elements with <=>, and the [] []= methods should
  # be implemented for the container.
  # Time Complexity: О(n^2)
  # Space Complexity: О(n) total, O(1) auxiliary
  # Stable: Yes
  # 
  #   Algorithms::Sort.insertion_sort [5, 4, 3, 1, 2] => [1, 2, 3, 4, 5]
  def self.insertion_sort(container)
    return container if container.size < 2
    (1..container.size-1).each do |i|
      value = container[i]
      j = i-1
      while j >= 0 and container[j] > value do
        container[j+1] = container[j]
        j = j-1
      end
      container[j+1] = value
    end
    container
  end