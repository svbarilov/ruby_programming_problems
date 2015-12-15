# Selection sort: A naive sort that goes through the container and selects the smallest element,
  # putting it at the beginning. Repeat until the end is reached.
  # Requirements: Needs to be able to compare elements with <=>, and the [] []= methods should
  # be implemented for the container.
  # Time Complexity: О(n^2)
  # Space Complexity: О(n) total, O(1) auxiliary
  # Stable: Yes
  # 
  #   Algorithms::Sort.selection_sort [5, 4, 3, 1, 2] => [1, 2, 3, 4, 5]
  def self.selection_sort(container)
    0.upto(container.size-1) do |i|
      min = i
      (i+1).upto(container.size-1) do |j|
        min = j if (container[j] <=> container[min]) == -1
      end
      container[i], container[min] = container[min], container[i] # Swap
    end
    container
  end